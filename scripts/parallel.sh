#!/bin/bash

echo "********************* start n5 **********************************"

for ((i=1;i<=5;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n5/aes localhost qlog/server/n5/aes $i 1" "./client_qlog.sh pprof/client/n5/aes localhost qlog/client/n5/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n5/noAES localhost qlog/server/n5/noAES $i 1" "./client_noAES.sh pprof/client/n5/noAES localhost qlog/client/n5/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n5/chacha20 localhost qlog/server/n5/chacha20 $i 1" "./client_chacha20.sh pprof/client/n5/chacha20 localhost qlog/client/n5/chacha20 $i 2"
echo "done chacha20 $i"
done

echo "********************* done n5 **********************************"

echo "********************* start n10 **********************************"

for ((i=1;i<=10;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n10/aes localhost qlog/server/n10/aes $i 1" "./client_qlog.sh pprof/client/n10/aes localhost qlog/client/n10/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n10/noAES localhost qlog/server/n10/noAES $i 1" "./client_noAES.sh pprof/client/n10/noAES localhost qlog/client/n10/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n10/chacha20 localhost qlog/server/n10/chacha20 $i 1" "./client_chacha20.sh pprof/client/n10/chacha20 localhost qlog/client/n10/chacha20 $i 2"
echo "done chacha20 $i"
done

echo "********************* done n10 **********************************"

echo "********************* start n15 **********************************"

for ((i=1;i<=15;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n15/aes localhost qlog/server/n15/aes $i 1" "./client_qlog.sh pprof/client/n15/aes localhost qlog/client/n15/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n15/noAES localhost qlog/server/n15/noAES $i 1" "./client_noAES.sh pprof/client/n15/noAES localhost qlog/client/n15/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n15/chacha20 localhost qlog/server/n15/chacha20 $i 1" "./client_chacha20.sh pprof/client/n15/chacha20 localhost qlog/client/n15/chacha20 $i 2"
echo "done chacha20$i"
done

echo "********************* done n15 **********************************"

#echo "********************* start n25 **********************************"

#for ((i=1;i<=25;i++))do
#echo "start aes $i"
#   parallel -j 2 -k -u ::: './qlog.sh pprof/server/n25/aes localhost qlog/server/n25/aes $i 1' './client_qlog.sh pprof/client/n25/aes localhost qlog/client/n25/aes $i 2'
#echo "done $i"
#echo "start noAES $i"
#   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n25/noAES localhost qlog/server/n25/noAES $i 1" "./client_noAES.sh pprof/client/n25/noAES localhost qlog/client/n25/noAES $i 2"
#echo "done noAES $i"
#echo "start chacha20 $i"
#   parallel -j 2 -k -u ::: "./qlog.sh pprof/server/n25/chacha20 localhost qlog/server/n25/chacha20 $i 1" "./client_chacha20.sh pprof/client/n25/chacha20 localhost qlog/client/n25/chacha20 $i 2"
#echo "done chacha20$i"
#done

#echo "********************* done n25 **********************************"