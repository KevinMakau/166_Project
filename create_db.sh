#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
psql -h localhost -p $PGPORT $USER"_DB" < create_tables.sql
psql -h localhost -p $PGPORT $USER"_DB" < create_indexes.sql
psql -h localhost -p $PGPORT $USER"_DB" < load_data.sql
