#!/usr/bin/bash

function import_csv_to_db() {
  psql -U macrespo -d piscineds -h localhost -v table="$1" -v tablepath="$2" -f /opt/ex03/automatic_table.sql -w
}

function enable_psql_automatic_login() {
  echo "localhost:5432:piscineds:macrespo:mysecretpassword" > ~/.pgpass
  chmod 0600 ~/.pgpass
}

function main() {
  enable_psql_automatic_login
  for filepath in $(find /opt/customer -type f -name "*.csv"); do
    filename=$(basename "$filepath" .csv)
    import_csv_to_db "$filename" "$filepath"
  done
}

main
