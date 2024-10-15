#!/bin/bash
export KEYCLOAK_PASSWORD=$(cat /run/secrets/keycloak_admin_password)
export DB_PASSWORD=$(cat /run/secrets/keycloak_db_password)

exec -v start-dev --import-realm
