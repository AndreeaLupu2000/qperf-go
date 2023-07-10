#!/bin/bash

for ((i=1;i<=5;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n5/aes localhost qlog/XADS/server/n5/aes $i 1" "./client_qlog_xads.sh pprof/XADS/client/n5/aes localhost qlog/XADS/client/n5/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n5/noAES localhost qlog/XADS/server/n5/noAES $i 1" "./client_noAES_xads.sh pprof/XADS/client/n5/noAES localhost qlog/XADS/client/n5/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n5/chacha20 localhost qlog/XADS/server/n5/chacha20 $i 1" "./client_chacha20_xads.sh pprof/XADS/client/n5/chacha20 localhost qlog/XADS/client/n5/chacha20 $i 2"
echo "done chacha20 $i"
done

echo "********************* done n5 **********************************"

for ((i=1;i<=10;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n10/aes localhost qlog/XADS/server/n10/aes $i 1" "./client_qlog_xads.sh pprof/XADS/client/n10/aes localhost qlog/XADS/client/n10/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n10/noAES localhost qlog/XADS/server/n10/noAES $i 1" "./client_noAES_xads.sh pprof/XADS/client/n10/noAES localhost qlog/XADS/client/n10/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n10/chacha20 localhost qlog/XADS/server/n10/chacha20 $i 1" "./client_chacha20_xads.sh pprof/XADS/client/n10/chacha20 localhost qlog/XADS/client/n10/chacha20 $i 2"
echo "done chacha20 $i"
done

echo "********************* done n10 **********************************"

for ((i=1;i<=15;i++))do
echo "start aes $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n15/aes localhost qlog/XADS/server/n15/aes $i 1" "./client_qlog_xads.sh pprof/XADS/client/n15/aes localhost qlog/XADS/client/n15/aes $i 2"
echo "done aes $i"
echo "start noAES $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n15/noAES localhost qlog/XADS/server/n15/noAES $i 1" "./client_noAES_xads.sh pprof/XADS/client/n15/noAES localhost qlog/XADS/client/n15/noAES $i 2"
echo "done noAES $i"
echo "start chacha20 $i"
   parallel -j 2 -k -u ::: "./qlog.sh pprof/XADS/server/n15/chacha20 localhost qlog/XADS/server/n15/chacha20 $i 1" "./client_chacha20_xads.sh pprof/XADS/client/n15/chacha20 localhost qlog/XADS/client/n15/chacha20 $i 2"
echo "done chacha20$i"
done

echo "********************* done n15 **********************************"
