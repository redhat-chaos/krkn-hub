#!/bin/bash

# Vars and respective defaults
export CERBERUS_ENABLED=${CERBERUS_ENABLED:=False}
export CERBERUS_URL=${CERBERUS_URL:=http://0.0.0.0:8080}
export DISTRIBUTION=${DISTRIBUTION:=openshift}
export KRKN_KUBE_CONFIG=${KRKN_KUBE_CONFIG:=/home/krkn/.kube/config}
export WAIT_DURATION=${WAIT_DURATION:=60}
export ITERATIONS=${ITERATIONS:=1}
export DAEMON_MODE=${DAEMON_MODE:=False}
export RETRY_WAIT=${RETRY_WAIT:=120}
export PUBLISH_KRAKEN_STATUS=${PUBLISH_KRAKEN_STATUS:=False}
export SIGNAL_ADDRESS=${SIGNAL_ADDRESS:=0.0.0.0}
export PORT=${PORT:=8081}
export SIGNAL_STATE=${SIGNAL_STATE:=RUN}
export UUID=${UUID:=""}
export DEPLOY_DASHBOARDS=${DEPLOY_DASHBOARDS:=False}
export CAPTURE_METRICS=${CAPTURE_METRICS:=False}
export ENABLE_ALERTS=${ENABLE_ALERTS:=False}
export ALERTS_PATH=${ALERTS_PATH:=config/alerts.yaml}


export ENABLE_ES=${ENABLE_ES:=False}
export ES_SERVER=${ES_SERVER:=http://0.0.0.0}
export ES_PORT=${ES_PORT:=443}
export ES_COLLECT_METRICS=${ES_COLLECT_METRICS:=False}
export ES_COLLECT_ALERTS=${ES_COLLECT_ALERTS:=False}
export ES_USERNAME=${ES_USERNAME:=elastic}
export ES_PASSWORD=${ES_PASSWORD}
export ES_VERIFY_CERTS=${ES_VERIFY_CERTS:=False}

export ES_METRICS_INDEX=${ES_METRICS_INDEX:=krkn-metrics}
export ES_ALERTS_INDEX=${ES_ALERTS_INDEX:=krkn-alerts}
export ES_TELEMETRY_INDEX=${ES_TELEMETRY_INDEX:=krkn-telemetry}


export CHECK_CRITICAL_ALERTS=${CHECK_CRITICAL_ALERTS:=False}
export TELEMETRY_ENABLED=${TELEMETRY_ENABLED:=False}
export TELEMETRY_API_URL=${TELEMETRY_API_URL:=https://ulnmf9xv7j.execute-api.us-west-2.amazonaws.com/production}
export TELEMETRY_USERNAME=${TELEMETRY_USERNAME:=redhat-chaos}
export TELEMETRY_PASSWORD=${TELEMETRY_PASSWORD}
export TELEMETRY_PROMETHEUS_BACKUP=${TELEMETRY_PROMETHEUS_BACKUP:=True}
export TELEMTRY_FULL_PROMETHEUS_BACKUP=${TELEMETRY_FULL_PROMETHEUS_BACKUP:=False}
export TELEMETRY_BACKUP_THREADS=${TELEMETRY_BACKUP_THREADS:=5}
export TELEMETRY_ARCHIVE_PATH=${TELEMETRY_ARCHIVE_PATH:=/tmp}
export TELEMETRY_MAX_RETRIES=${TELEMETRY_MAX_RETRIES:=0}
export TELEMETRY_RUN_TAG=${TELEMETRY_RUN_TAG:=chaos}
export TELEMETRY_GROUP=${TELEMETRY_GROUP:=default}
export TELEMETRY_ARCHIVE_SIZE=${TELEMETRY_ARCHIVE_SIZE:=1000}
export TELEMETRY_LOGS_BACKUP=${TELEMETRY_LOGS_BACKUP:=False}
export TELEMETRY_FILTER_PATTERN=${TELEMETRY_FILTER_PATTERN:='["(\\w{3}\\s\\d{1,2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d+).+","kinit (\\d+/\\d+/\\d+\\s\\d{2}:\\d{2}:\\d{2})\\s+","(\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d+Z).+"]'}
export TELEMETRY_CLI_PATH=${TELEMETRY_CLI_PATH:=""}
export TELEMETRY_EVENTS_BACKUP=${TELEMETRY_EVENTS_BACKUP:=True}

# Set KUBECONFIG to mounted kubeconfig
export KUBECONFIG=${KRKN_KUBE_CONFIG}
