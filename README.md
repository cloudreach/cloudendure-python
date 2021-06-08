# cloudendure-python

Python wrapper and CLI for [CloudEndure](https://www.cloudendure.com/)

## Requirements

[Python 3.7+](https://www.python.org/downloads/)

## Installation & Usage

### Installation

```sh
pip install cloudendure
cloudendure version
```

### Usage

Then import the package:

```python
import cloudendure
```

## Getting Started
CloudEndure Pipeline Flow
![CloudEndure Pipeline Flow](images/ce_migration_pipeline.png)

CloudEndure Data Flow
![CloudEndure Data Flow](images/ce_dataflow.png)

Pipeline Flow (as seen in AWS Console)
![Pipeline_Flow](images/stepfunctions_graph.svg)

### Logging in via CLI using environment variables

Please note: `cloudendure` and `ce` can be used interchangeably

```sh
export CLOUDENDURE_USERNAME=<your_ce_user>
export CLOUDENDURE_PASSWORD=<your_ce_password>
export CLOUDENDURE_DESTINATION_ACCOUNT=<destination_aws_account_id>

cloudendure api login
```

or

```sh
export CLOUDENDURE_USER_API_TOKEN=<your_ce_user_api_token>
export CLOUDENDURE_DESTINATION_ACCOUNT=<destination_aws_account_id>

ce api login
```

### Logging in via CLI inline

Please note: `cloudendure` and `ce` can be used interchangeably

```sh
cloudendure api login --user=<your_ce_user> --password=<your_ce_password>
```

or

```sh
ce api login --token=<your_ce_user_api_token>
```

Logging in for the first time will generate the `~/.cloudendure.yml` file.

### Recommended Steps

* Create CE Token within the CE Console
* Export CE Token:
    * `$ export CLOUDENDURE_USER_API_TOKEN=<CE_API_TOKEN>`
* Get the CE Project ID for exisitng Project:
    * `$ cloudendure get_project_id --project-name="<CE_PROJECT_NAME>"`
* Export CE Project ID:
    * `$ export CLOUDENDURE_PROJECT_ID="<CE_PROJECT_ID>"`

## Coming Soon

TBD

## Changelog

Check out the [CHANGELOG](CHANGELOG.md)
