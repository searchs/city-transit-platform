#!/usr/local/env sh

python producers/simulation.py

cd consumers

faust -A faust_stream worker -l info

python consumers/ksql.py

python consumers/server.py




# psql "dbname=dbhere host=hosthere user=userhere password=pwhere port=5432 sslmode=require"
psql "dbname=cta host=localhost user=cta_admin password=chicago port=5432 sslmode=require"





!export SPARK_HOME=//Users/screative/.sdkman/candidates/spark/current/
!export SPARK_HOME=/opt/spark-3.0.1-bin-hadoop2.9.2
!export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.9-src.zip:$PYTHONPATH
!export PATH=$SPARK_HOME/bin:$SPARK_HOME/python:$PATH