# Learn Terraform with Localstack

https://app.pluralsight.com/library/courses/implementing-terraform-aws/table-of-contents
https://github.com/mihaivirlan/implementing-terraform-on-aws

# TL;DR

Just use the script `run.sh` with an argument to the folder in which you want it to run, i.e.:
```shell
./run.sh simple-s3
```

## Motivation

In order to grasp more about what [terraform](https://www.terraform.io/) has to offer in terms of AWS, 
and to use [localstack](https://localstack.cloud/) for local testing.

## Getting Setup

### Terraform

Installing terraform, recommend manual installation using [tfenv](https://github.com/tfutils/tfenv#manual)

### Localstack

I've not installed with pip, as I'm on a PRO account and like a little more control.

Also I've used the "full" version of the container [localstack/localstack-full](https://hub.docker.com/r/localstack/localstack-full),
see the `docker-compose.yml` file.

### Docker Compose

See: https://github.com/docker/compose/releases

## Basics

Aliases used:
```shell
alias dc='docker-compose'
alias laws='aws --endpoint-url=http://localhost:4566 '
```

# Reading

- https://github.com/cloudposse/
