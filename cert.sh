#!/bin/bash
set -e 

DC=dc1

mkdir -p certs
mkdir -p servers/certs
mkdir -p clients/certs

cd certs
docker run -it --rm -v ${PWD}:/app -w /app consul consul tls ca create
docker run -it --rm -v ${PWD}:/app -w /app consul tls cert create -server -dc ${DC}
docker run -it --rm -v ${PWD}:/app -w /app consul tls cert create -client -dc ${DC}

cp $(ls | grep consul-agent) $(ls | grep server-consul) ../servers/certs
cp $(ls | grep consul-agent) $(ls | grep client-consul) ../clients/certs/
# consul tls cert create -server -dc <dc_name> -additional-dnsname=<secondary_consul_server_name>
cd -
