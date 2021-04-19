### Project Checklist:

_Kafka Producer_

<input  type="checkbox" checked/> Kafka topics are created with appropriate settings

<input  type="checkbox" /> Kafka messages are produced successfully

<input  type="checkbox" /> All messages have an associated value schema

_Kafka Consumer_

<input  type="checkbox" /> Messages are consumed from Kafka

<input  type="checkbox" /> Stations data is consumed from the beginning of the topic

_Kafka REST Proxy_

<input  type="checkbox" /> Kafka REST Proxy successfully delivers messages to the Kafka Topic

<input  type="checkbox" /> Messages produced to the Kafka REST Proxy include a value schema

_Kafka Connect_

<input  type="checkbox" /> Kafka Connect successfully loads Station data from Postgres to Kafka

<input  type="checkbox" /> Kafka Connect is configured to define a Schema

<input  type="checkbox" /> Kafka Connect is configured to load on an incrementing ID

_Faust Streams_

<input  type="checkbox" /> The Faust application ingests data from the stations topic

<input  type="checkbox" /> Data is translated correctly from the Kafka Connect format to the Faust table format

<input  type="checkbox" /> Transformed Station Data is Present for each Station ID in the Kafka Topic

_KSQL_

<input  type="checkbox" /> Turnstile topic is translated into a KSQL Table

<input  type="checkbox" /> Turnstile table is aggregated into a summary table
