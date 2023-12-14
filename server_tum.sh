#!/bin/bash

echo "**************************************************************** Start script ************************************************************"
n=$1
port=$2
CONFIG=$3
gb=$4
echo " "

list_descendants ()
{
  local children=$(ps -o pid= --ppid "$1")

  for pid in $children
  do
    list_descendants "$pid"
  done

  echo "$children"
}

export OPENSSL_ia32cap=0


echo "start aes"
for ((i=1;i<=$n;i++))do
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/server/aes/time_server_aes_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/server/aes/profile_server$i" server --port $port -qlog "qlog/n$n/gb${gb}/server/aes/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key & QPERF_PID=$! 
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/client/aes/time_client_aes_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/client/aes/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/client/aes/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl -cs aes_128 --response-length ${gb}gb
kill $(list_descendants $QPERF_PID)
done
echo "finish aes"
echo " "

export OPENSSL_ia32cap="~0x200000200000000"

#echo "start noAES"
#for ((i=1;i<=$n;i++))do
# shellcheck disable=SC2034
#/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/server/noAES/time_server_noAES_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/server/noAES/profile_server$i" server -port $port -qlog "qlog/n$n/gb${gb}/server/noAES/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key -hwa  & QPERF_PID=$!
#/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/client/noAES/time_client_noAES_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/client/noAES/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/client/noAES/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl -cs aes_128 -hwa  --response-length ${gb}gb
#kill $(list_descendants $QPERF_PID)
#done
#echo "finish noAES"
#echo " "

export OPENSSL_ia32cap=0

echo "start chacha20"
for ((i=1;i<=$n;i++))do
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/server/chacha20/time_server_chacha20_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/server/chacha20/profile_server$i" server -port $port -qlog "qlog/n$n/gb${gb}/server/chacha20/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key & QPERF_PID=$!
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/client/chacha20/time_client_chacha20_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/client/chacha20/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/client/chacha20/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl  -cs chacha20 --response-length ${gb}gb
kill $(list_descendants $QPERF_PID)
done
echo "finish chacha20"
echo " "

echo "START XADS"
echo "start aes"
for ((i=1;i<=$n;i++))do
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/server/aes/time_server_aes_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/server/aes/profile_server$i" server --port $port -qlog "qlog/n$n/gb${gb}/XADS/server/aes/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key & QPERF_PID=$! 
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/client/aes/time_client_aes_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/client/aes/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/XADS/client/aes/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl -xads -cs aes_128 --response-length ${gb}gb
kill $(list_descendants $QPERF_PID)
done
echo "finish aes"
echo " "

export OPENSSL_ia32cap="~0x200000200000000"

#echo "start noAES"
#for ((i=1;i<=$n;i++))do
# shellcheck disable=SC2034
#/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/server/noAES/time_server_noAES_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/server/noAES/profile_server$i" server -port $port -qlog "qlog/n$n/gb${gb}/XADS/server/noAES/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key -hwa  & QPERF_PID=$!
#/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/client/noAES/time_client_noAES_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/client/noAES/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/XADS/client/noAES/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl -cs aes_128 -hwa -xads --response-length ${gb}gb
#kill $(list_descendants $QPERF_PID)
#done
#echo "finish noAES"
#echo " "

export OPENSSL_ia32cap=0

echo "start chacha20"
for ((i=1;i<=$n;i++))do
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/server/chacha20/time_server_chacha20_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/server/chacha20/profile_server$i" server -port $port -qlog "qlog/n$n/gb${gb}/XADS/server/chacha20/server_${i}_qlog_{odcid}.qlog" -qlog-level info -tls-cert server.crt -tls-key server.key & QPERF_PID=$!
/usr/bin/time -o TIME/normal/n$n/cs128-${CONFIG}/gb${gb}/XADS/client/chacha20/time_client_chacha20_${CONFIG}.txt -a ./qperf-go --cpu-profile "pprof/n$n/gb${gb}/XADS/client/chacha20/profile_client$i" client -a localhost:$port -qlog "qlog/n$n/gb${gb}/XADS/client/chacha20/client_${i}_qlog_{odcid}.qlog" -qlog-level info -cert-pool server.crt -pl  -cs chacha20 -xads --response-length ${gb}gb
kill $(list_descendants $QPERF_PID)
done
echo "finish chacha20"

echo " "
echo "DONE XADS"
