#!/bin/bash

set -e

[ -d "$1" ] || (echo "Could not find folder: $1"; exit 1)

pushd $1
TMPDIR=/tmp

AWS_ACCESS_KEY_ID=test
AWS_SECRET_ACCESS_KEY=test
DEFAULT_AWS_REGION="eu-west-2"

EP="--endpoint-url=http://localhost:4566 "

echo
echo "Starting..."
echo -n "Checking we have a running localstack_main... "
if [ $("docker ps --format '{{.Names}}' | grep localstack_main") ]
then
  echo "Found"
else
  docker-compose up -d
fi

echo "Initialising Terraform..."
terraform init

echo "Applying Terraform... (don't worry we're using localstack)"
terraform apply -lock=false -auto-approve

echo "Checking configuration..."
echo aws ${EP} s3 ls s3://test_bucket

popd
echo
echo "... Finished"
echo