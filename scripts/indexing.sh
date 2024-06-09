#!/bin/bash
curl -H "Content-Type: application/json" -XPOST --data-binary "@example.json" "http://localhost:9200/example-index/_bulk"