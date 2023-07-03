#!/bin/bash
#for ((i=1; i<=10; i++)); do
#echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_10/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_10/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -qlog-level full -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_10/chacha20_noGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_10/chacha20_noGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_10/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_10/hasAESGCM/qlog-server-$i-{odcid}.qlog" -qlog-level full -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_10/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_10/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -qlog-level full -tls-cert server.crt -tls-key server.key
#echo
#done

for ((i=1; i<=25; i++)); do
echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_25/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_25/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_25/chacha20_noGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_25/chacha20_noGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_25/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_25/hasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_25/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_25/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
echo
done


#for ((i=1; i<=50; i++)); do 
#echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/chacha20_noGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/chacha20_noGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/hasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_50/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_50/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info
#echo
#done

#for ((i=1; i<=100; i++)); do
#echo "running $i"
# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/chacha20_GCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/chacha20_GCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info

# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/chacha20_noGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/chacha20_noGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info

# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/hasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/hasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info

# ./qperf-go -cpu-profile "/home/andreea/Documents/CPU-profile/Server/n_100/noHasAESGCM/prof-server-$i" server -addr localhost -port 18080 -qlog  "/home/andreea/Documents/qlog/Server/n_100/noHasAESGCM/qlog-server-$i-{odcid}.qlog" -tls-cert server.crt -tls-key server.key -qlog-level info

#echo
#done
