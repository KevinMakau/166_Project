#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
psql -h localhost -p $PGPORT $DB_NAME"_DB" < create_tables.sql
psql -h localhost -p $PGPORT $DB_NAME"_DB" < create_indexes.sql
psql -h localhost -p $PGPORT $DB_NAME"_DB" < load_data.sql
