#!/usr/local/env sh

python producers/simulation.py

cd consumers

faust -A faust_stream worker -l info

python consumers/ksql.py

python consumers/server.py

# psql "dbname=dbhere host=hosthere user=userhere password=pwhere port=5432 sslmode=require"
psql "dbname=cta host=localhost user=cta_admin password=chicago port=5432 sslmode=require"
