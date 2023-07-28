#!/bin/bash

STACK_NAME=$1
TEMPLATE_BODY=$2
PARAMETERS=$3

CMD="aws cloudformation update-stack \
--stack-name $STACK_NAME \
--template-body file://$TEMPLATE_BODY \
--capabilities CAPABILITY_NAMED_IAM \
--region=us-west-2"

if [ -n "$PARAMETERS" ]; then
    if [ -f "$PARAMETERS" ]; then
        CMD+=" --parameters file://$PARAMETERS"
    else
        echo "Parameters file not found: $PARAMETERS"
        exit 1
    fi
fi

$CMD
