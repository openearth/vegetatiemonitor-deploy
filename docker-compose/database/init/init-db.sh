#!/bin/bash
set -e

# This file is only executed if the postgres data directory is empty.
# Create liwo database
psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
    CREATE USER vegmon;
    CREATE DATABASE vegmon;
    GRANT ALL PRIVILEGES ON DATABASE vegmon TO vegmon;
EOSQL