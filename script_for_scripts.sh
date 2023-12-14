#!/bin/bash
echo "***********************************************Start cs128 default**************************"

n=$1
port=$2
gb=$3
echo "START deleting files from the result folder and creting them"

folders=( [0]="results_folder/single-connections/normal/pprof-cs128-default/pprof" [1]="results_folder/single-connections/normal/pprof-cs128-r50-b50-l50/pprof" [2]="results_folder/single-connections/normal/pprof-cs256-default/pprof" [3]="results_folder/single-connections/normal/pprof-cs256-r50-b50-l50/pprof" [4]="results_folder/single-connections/normal/qlog-cs128-default/qlog" [5]="results_folder/single-connections/normal/qlog-cs128-r50-b50-l50/qlog" [6]="results_folder/single-connections/normal/qlog-cs256-default/qlog" [7]="results_folder/single-connections/normal/qlog-cs256-r50-b50-l50/qlog")

for folder in "${folders[@]}";do
	rm -rf "${folder}/n${n}/gb{gb}/*"
done

folders=( [0]="results_folder/single-connections/encryption-disabled/pprof-cs128-default/pprof" [1]="results_folder/single-connections/encryption-disabled/pprof-cs128-r50-b50-l50/pprof" [2]="results_folder/single-connections/encryption-disabled/pprof-cs256-default/pprof" [3]="results_folder/single-connections/encryption-disabled/pprof-cs256-r50-b50-l50/pprof" [4]="results_folder/single-connections/encryption-disabled/qlog-cs128-default/qlog" [5]="results_folder/single-connections/encryption-disabled/qlog-cs128-r50-b50-l50/qlog" [6]="results_folder/single-connections/encryption-disabled/qlog-cs256-default/qlog" [7]="results_folder/single-connections/encryption-disabled/qlog-cs256-r50-b50-l50/qlog")

for folder in "${folders[@]}";do
	rm -rf "${folder}/n${n}/gb{gb}/*"
done

types=( [0]="TIME/normal" [1]="TIME/encryption-disabled")
 for type in "${types[@]}";do
         folders=( [0]="cs128-default" [2]="cs128-limited" [3]="cs256-default" [4]="cs256-limited")
                        for folder in "${folders[@]}";do
                                rm -rf "${type}/n$n/${folder}/gb${gb}/*"
	done
done


types=( [0]="TIME/normal" [1]="TIME/encryption-disabled")
 for type in "${types[@]}";do
	mkdir "${type}/n$n"
		folders=( [0]="cs128-default" [2]="cs128-limited" [3]="cs256-default" [4]="cs256-limited")
      			for folder in "${folders[@]}";do
				mkdir "${type}/n$n/${folder}"
				mkdir "${type}/n$n/${folder}/gb${gb}"
				mkdir "${type}/n$n/${folder}/gb${gb}/XADS"
	  			users=([0]="client" [1]="server")
				for user in "${users[@]}";do
					mkdir "${type}/n$n/${folder}/gb${gb}/${user}"
        	        		mkdir "${type}/n$n/${folder}/gb${gb}/XADS/${user}"
					ciphers=([0]="aes" [1]="noAES" [2]="chacha20")
          				for cipher in "${ciphers[@]}";do
                        			mkdir "${type}/n$n/${folder}/gb${gb}/${user}/${cipher}"
                       				mkdir "${type}/n$n/${folder}/gb${gb}/XADS/${user}/${cipher}"
					done
	   			done
			done
done

./remove_files.sh $n $gb

echo "DONE deleting files from the result folder and creating them"


echo "Ensuring the default values are set"
sudo tc qdisc del dev lo root

echo " "

echo "start normal with n = ${n}"

#./server_tum.sh $n $port "default" $gb

echo "Done normal with n = ${n}"

cp -r qlog/n${n} results_folder/single-connections/normal/qlog-cs128-default/qlog
cp -r pprof/n${n} results_folder/single-connections/normal/pprof-cs128-default/pprof

./remove_files.sh $n $gb

echo "start encryption disabled n = ${n}"

#./server_tum_ds.sh $n $port "default" $gb
echo "Done encryption disabled n = ${n}"

echo " "

cp -r qlog/n${n} results_folder/single-connections/encryption-disabled/qlog-cs128-default/qlog
cp -r pprof/n${n} results_folder/single-connections/encryption-disabled/pprof-cs128-default/pprof
echo "Done copying qlog&pprof files"
echo " "
echo "*********************************************** Start cs128-r50-b50-l50**************************"
echo "remove files from all folders"
echo " "

./remove_files.sh $n $gb


echo " "
echo "done removing files"
echo "Ensuring the def-ault values are set"

sudo tc qdisc del dev lo root

echo " "

echo "sudo tc qdisc add dev lo root tbf rate 1gbit burst 10mb latency 1ms -- asta e bun bun"

sudo tc qdisc add dev lo root tbf rate 1gbit burst 10mb latency 1ms

echo " "
echo "start n = ${n}"

./server_tum.sh $n $port "limited" $gb

echo "Done n = ${n}"
echo " "

cp -r qlog/n${n} results_folder/single-connections/normal/qlog-cs128-r50-b50-l50/qlog
cp -r pprof/n${n} results_folder/single-connections/normal/pprof-cs128-r50-b50-l50/pprof

echo "Done copying qlog&pprof files"

./remove_files.sh $n $gb

echo "start encryption disabled n = ${n}"

./server_tum_ds.sh $n $port "limited" $gb

echo "Done encryption disabled n = ${n}"

echo " "

cp -r qlog/n${n} results_folder/single-connections/encryption-disabled/qlog-cs128-r50-b50-l50/qlog
cp -r pprof/n${n} results_folder/single-connections/encryption-disabled/pprof-cs128-r50-b50-l50/pprof
echo "Done copying qlog&pprof files"

echo " "
echo "***********************************************Start cs256 default**************************"
echo "START deleting files from the result folder and creting them"
./remove_files.sh $n $gb

echo "DONE deleting files from the result folder and creating them"


echo "Ensuring the default values are set"
sudo tc qdisc del dev lo root

echo " "

echo "start normal with n = ${n}"

#./server_tum_256.sh $n $port "default" $gb

echo "Done normal with n = ${n}"

cp -r qlog/n${n} results_folder/single-connections/normal/qlog-cs256-default/qlog
cp -r pprof/n${n} results_folder/single-connections/normal/pprof-cs256-default/pprof

./remove_files.sh $n $gb

echo "start encryption disabled n = ${n}"

#./server_tum_256_ds.sh $n $port "default" $gb

echo "Done encryption disabled n = ${n}"

echo " "

cp -r qlog/n${n} results_folder/single-connections/encryption-disabled/qlog-cs256-default/qlog
cp -r pprof/n${n} results_folder/single-connections/encryption-disabled/pprof-cs256-default/pprof
echo "Done copying qlog&pprof files"
echo " "

echo "*********************************************** Start cs256-r50-b50-l50**************************"
echo "remove files from all folders"
echo " "

./remove_files.sh $n $gb


echo " "
echo "done removing files"
echo "Ensuring the default values are set"

sudo tc qdisc del dev lo root

echo "sudo tc qdisc add dev lo root tbf rate 1gbit burst 10mb latency 1ms"

sudo tc qdisc add dev lo root tbf rate 1gbit burst 10mb latency 1ms

echo "start limited normal n = ${n}"

./server_tum_256.sh $n $port "limited" $gb

echo "Done normal n = ${n}"
echo " "

cp -r qlog/n${n} results_folder/single-connections/normal/qlog-cs256-r50-b50-l50/qlog
cp -r pprof/n${n} results_folder/single-connections/normal/pprof-cs256-r50-b50-l50/pprof

echo "Done copying qlog&pprof files"

./remove_files.sh $n $gb

echo "start encryption disabled n = ${n}"

./server_tum_256_ds.sh $n $port "limited" $gb

echo "Done encryption disabled n = ${n}"

echo " "

cp -r qlog/n${n} results_folder/single-connections/encryption-disabled/qlog-cs256-r50-b50-l50/qlog
cp -r pprof/n${n} results_folder/single-connections/encryption-disabled/pprof-cs256-r50-b50-l50/pprof
echo "Done copying qlog&pprof files"

echo " "
echo "Copying everything in Single-Connection folder"

echo "Ensuring the default values are set"

sudo tc qdisc del dev lo root

echo "****************************************************** Done with script_for_scripts.sh ******************************************************"

