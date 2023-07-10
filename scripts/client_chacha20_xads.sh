#!/bin/bash

# ------------Parameters description--------------------------
# 1: Path to pprof file
# 2: client address:port
# 3: Path to qlog file
# ------------------------------------------------------------

echo "client is running"
 timeout 15s ./qperf-go -cpu-profile  "$1/profile$4" client -a $2 -qlog "$3/clientQlog_{odcid}_$4" -qlog-level info -cert-pool server.crt -pl -gcm -xads
echo "client done"
