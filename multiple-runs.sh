#!/bin/bash
echo "***********************************************Start cs128 default**************************"

echo "START deleting files from the result folder and creting them"

#folders=([0]=1)

#for folderNr in "${folders[@]}";do
#       ./script_for_scripts.sh 20 18081 ${folderNr}
#done

#folders=([0]=2)
#for folderNr in "${folders[@]}";do
#       ./script_for_scripts.sh 20 18081 ${folderNr}
#done

folders=([0]=10)
for folderNr in "${folders[@]}";do
       ./script_for_scripts.sh 10 18081 ${folderNr}
done

#folders=([0]=10)
#for folderNr in "${folders[@]}";do
#       ./script_for_scripts.sh 20 18081 ${folderNr}
#done
