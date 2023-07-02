#!/bin/bash

#for ((i=1; i<=50; i++)); do 
#echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/chacha20/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/chacha20/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/chacha20/chacha20_nGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/chacha20/chacha20_nGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/hasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key
#echo
#done

for ((i=1; i<=100; i++)); do 
echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/chacha20/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/chacha20/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key

# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/chacha20/chacha20_nGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/chacha20/chacha20_nGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key

# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/hasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key

 ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key

echo
done
