#!/bin/bash

set -ex

ls

# Source env.sh to read all the vars
source env.sh

export KUBECONFIG=$KRKN_KUBE_CONFIG

# cluster details
echo "Printing cluster details"
oc version
cat $KRKN_KUBE_CONFIG
oc config view
echo "Printing node info"
for node in $(oc get nodes | awk 'NR!=1{print $1}'); do oc get node/$node -o yaml; done

source node-memory-hog/env.sh

krkn_loc=/root/kraken

# Substitute config with environment vars defined
envsubst < node-memory-hog/input.yaml.template> memory-hog/memory_hog_scenario.yaml
export SCENARIO_FILE="memory-hog/memory_hog_scenario.yaml"
envsubst < config.yaml.template > memory_hog_config.yaml

# Run Kraken
cat memory_hog_config.yaml
cat memory-hog/memory_hog_scenario.yaml
python3.9 $krkn_loc/run_kraken.py --config=memory_hog_config.yaml