#!/bin/bash
# This script stops the local Elasticsearch and Kibana

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/workdir"
fi
DIR=$1

if [ -e $DIR/elasticsearch.pid ]; then
    echo "Killing Elasticsearch (pid `cat $DIR/elasticsearch.pid`)"
    kill `cat $DIR/elasticsearch.pid`
    rm $DIR/elasticsearch.pid
fi

if [ -e $DIR/kibana.pid ]; then
    echo "Killing Kibana (pid `cat $DIR/kibana.pid`)"
    kill `cat $DIR/kibana.pid`
    rm $DIR/kibana.pid
fi
