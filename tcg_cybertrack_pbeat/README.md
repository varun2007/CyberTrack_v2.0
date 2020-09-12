# Welcome to packetbeat 6.3.2

Packetbeat analyzes network traffic and sends the data to Elasticsearch.

## Getting Started

To get started with packetbeat, you need to set up Elasticsearch on your localhost first. After that, start packetbeat with:

     ./packetbeat -c packetbeat.yml -e

This will start the beat and send the data to your Elasticsearch instance. To load the dashboards for packetbeat into Kibana, run:

    ./packetbeat setup -e

For further steps visit the [Getting started](https://www.elastic.co/guide/en/beats/packetbeat/6.3/packetbeat-getting-started.html) guide.

## Documentation

Visit [Elastic.co Docs](https://www.elastic.co/guide/en/beats/packetbeat/6.3/index.html) for the full packetbeat documentation.

## Release notes

https://www.elastic.co/guide/en/beats/libbeat/6.3/release-notes-6.3.2.html
