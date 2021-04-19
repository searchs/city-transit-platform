#!/usr/bin/env sh

#Switch to Producers directory and start traffic simulation
cd producers
mkdir -p venv
python -m venv venv
. venv/bin/activate
python -m pip install --upgrade pip

python -m pip install --upgrade pandas==0.24.2
pip install -r requirements.txt
python simulation.py

cd ../consumers
mkdir -p venv
python -m venv venv
. venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

#KickOff Faust
faust -A faust_stream worker -l info

#Run the ksql to create the required tables
python ksql.py

status=$?
#Check if last command succeed before running the server/consumer
if [[ status -eq 0 ]]; then
    echo "Dashboard will run on http://localhost:8889"
    python server.py
else
  echo "KSQL Create table is not successful.  Check and try again.."
fi
