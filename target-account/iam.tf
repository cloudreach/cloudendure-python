resource "aws_iam_role" "this" {
  name               = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_policy.json
}

data "aws_iam_policy_document" "assume_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:sts::${var.source_account_id}:assumed-role/ce-iam-for-lambda/ce-copy-image"
      ]
    }
  }

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:sts::${var.source_account_id}:assumed-role/ce-iam-for-lambda/ce-get-copy-status"
      ]
    }
  }

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type = "AWS"
      identifiers = [
        "arn:aws:sts::${var.source_account_id}:assumed-role/ce-iam-for-lambda/ce-split-image"
      ]
    }
  }
}

resource "aws_iam_policy" "this" {
  name   = var.iam_policy_name
  policy = data.aws_iam_policy_document.role_permissions.json
}

data "aws_iam_policy_document" "role_permissions" {
  statement {
    actions = [
      "ec2:*"
    ]
    resources = [
      "*",
    ]
  }
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}
