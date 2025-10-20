#!/bin/sh
set -e

aws secretsmanager get-secret-value \
    --secret-id ansible/vault/my-portfolio/vault_password \
    --region us-east-1 \
    --query SecretString --output text

