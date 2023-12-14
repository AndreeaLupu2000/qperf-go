#!/bin/bash

echo "***************************************** START deleting files **********************************************"
echo "************** qlog&pprof **************"
n=$1
gb=$2
rm -r pprof/*
rm -r qlog/* 

echo "***************************************** DONE deleting files **********************************************"

echo "***************************************** Start creating  files **********************************************"
echo "************** qlog&pprof **************"

mkdir pprof/n$n
mkdir pprof/n$n/gb${gb}
mkdir pprof/n$n/gb${gb}/client
mkdir pprof/n$n/gb${gb}/server
mkdir pprof/n$n/gb${gb}/XADS
mkdir pprof/n$n/gb${gb}/XADS/client
mkdir pprof/n$n/gb${gb}/XADS/server
mkdir pprof/n$n/gb${gb}/client/aes
mkdir pprof/n$n/gb${gb}/server/aes
mkdir pprof/n$n/gb${gb}/XADS/client/aes
mkdir pprof/n$n/gb${gb}/XADS/server/aes
mkdir pprof/n$n/gb${gb}/client/noAES
mkdir pprof/n$n/gb${gb}/server/noAES
mkdir pprof/n$n/gb${gb}/XADS/client/noAES
mkdir pprof/n$n/gb${gb}/XADS/server/noAES
mkdir pprof/n$n/gb${gb}/client/chacha20
mkdir pprof/n$n/gb${gb}/server/chacha20
mkdir pprof/n$n/gb${gb}/XADS/client/chacha20
mkdir pprof/n$n/gb${gb}/XADS/server/chacha20

mkdir qlog/n$n
mkdir qlog/n$n/gb${gb}
mkdir qlog/n$n/gb${gb}/client
mkdir qlog/n$n/gb${gb}/server
mkdir qlog/n$n/gb${gb}/XADS
mkdir qlog/n$n/gb${gb}/XADS/client
mkdir qlog/n$n/gb${gb}/XADS/server
mkdir qlog/n$n/gb${gb}/client/aes
mkdir qlog/n$n/gb${gb}/server/aes
mkdir qlog/n$n/gb${gb}/XADS/client/aes
mkdir qlog/n$n/gb${gb}/XADS/server/aes
mkdir qlog/n$n/gb${gb}/client/noAES
mkdir qlog/n$n/gb${gb}/server/noAES
mkdir qlog/n$n/gb${gb}/XADS/client/noAES
mkdir qlog/n$n/gb${gb}/XADS/server/noAES
mkdir qlog/n$n/gb${gb}/client/chacha20
mkdir qlog/n$n/gb${gb}/server/chacha20
mkdir qlog/n$n/gb${gb}/XADS/client/chacha20
mkdir qlog/n$n/gb${gb}/XADS/server/chacha20


echo "***************************************** DONE creating  files **********************************************"
