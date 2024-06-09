# Elasticsearch Monitoring

This repository contains configuration files and scripts for monitoring Elasticsearch using Prometheus and Grafana.

## Contents

1. `Makefile`: Instructions for automating tasks.
2. `docker-compose.yml`: Configuration for setting up services with Docker Compose.
3. `grafana/`: Directory containing Grafana configurations.
   - `dashboards/`: JSON files for Grafana dashboards.
   - `provisioning/`: Configuration files for provisioning Grafana.
4. `prometheus/`: Directory containing Prometheus configuration.
5. `scripts/`: Utility scripts.

## Setup Instructions

### Prerequisites

- Docker
- Docker Compose

### Step-by-Step Guide

1. **Clone the Repository**
   ```sh
   git clone https://github.com/muhammad-asn/elasticsearch-monitoring.git
   cd elasticsearch-monitoring
Start the Services

2. **Start the Services**
docker-compose up -d

3. **Access the Interfaces**
Grafana: http://localhost:3000 (Default username: admin, Default password: admin)
Prometheus: http://localhost:9090

4. **Directory Structure**
```
elasticsearch-monitoring/
├── Makefile
├── docker-compose.yml
├── grafana/
│   ├── dashboards/
│   │   ├── dashboard-docker.json
│   │   ├── dashboard-elasticsearch.json
│   │   └── dashboard-node-exporter.json
│   ├── provisioning/
│   │   ├── dashboards/
│   │   │   └── dashboard.yml
│   │   └── datasources/
│   │       └── datasource.yml
├── prometheus/
│   └── prometheus.yml
├── scripts/
│   ├── example.json
│   └── indexing.sh
```


5. **License**
This project is licensed under the MIT License - see the LICENSE file for details.

6. **Contributing**
Please read CONTRIBUTING.md for details on our code of conduct and the process for submitting pull requests.