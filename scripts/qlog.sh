#!/bin/bash

# ------------Parameters description--------------------------
# 1: Path to pprof file
# 2: Server address
# 3: Path to qlog file
# ------------------------------------------------------------

echo "server is running"
 timeout 15s ./qperf-go -cpu-profile  "$1/profile$4" server -addr $2 -qlog "$3/serverQlog_{odcid}_$4.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key
echo "server done"
