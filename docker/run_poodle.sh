#!/usr/bin/env bash

set -e
set -x

cd /src/poodle-dvc
dvc run --overwrite-dvcfile -f download.dvc -d download.py -o /data/results.parquet python download.py
