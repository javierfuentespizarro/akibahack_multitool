#!/bin/bash
#Akibahack Multitool v1.0
#Coded by Javier Fuentes a.k.a AKIBAHACK
#Github: https://github.com/javierfuentespizarro

#Funciones de las opciones

#Option wait
function wait() {
	read -p $'\e[1;92mPress a key to continue...\e[0m \n' wait 
}

#Option 99 - Exit

function fexit() {
	printf "\n"
        printf "\e[1;31mGoodbye elliot! \e[0m \n"
        printf "\n"
        exit 1
}

#Option 1 - Show Network Configuration
function showip() {
        printf "\n"
        printf "\e[1;34mYOUR IP CONFIGURATION\e[0m \n"
        printf "\n"
        ifconfig -a
        printf "\n"
}

#Option 2- Change MAC with macchanger

function changemac() {
	printf "\n"
        printf "\e[1;34mYour interfaces...\e[0m \n"
        ifconfig | grep :
        printf "\n"
        read -p $'\e[1;92mInput your interface to change MAC:\e[0m ' interface
        printf "\e[1;34mChanging MAC...\e[0m \n"
        macchanger -m 66:66:66:66:66:66 $interface      
        printf "\e[1;31mThe DEVIL change your MAC ;)\e[0m \n"
        printf "\n"
}

#Option 3- Nmap -sT scanning

function nmapscan() {
	printf "\n"
        read -p $'\e[1;92mInput your Network Range (Ex:192.168.1.0/24):\e[0m ' network
        nmap -sT $network
}

#Banner
function banner() {
	printf "\e[1;92m    _    _  _____ ____    _      _   _    _    ____ _  __ \n"
	printf "   / \  | |/ /_ _| __ )  / \    | | | |  / \  / ___| |/ / \n"
	printf "  / _ \ | ' / | ||  _ \ / _ \   | |_| | / _ \| |   | ' /  \n"
	printf " / ___ \| . \ | || |_) / ___ \  |  _  |/ ___ \ |___| . \  \n"
	printf "/_/   \_\_|\_\___|____/_/   \_\ |_| |_/_/   \_\____|_|\_\ v1.0 \e[0m\n"
	printf "\n"
                                                         
printf "            \e[1;93m.:.\e[0m\e[1;92m Coded by\e[0m\e[1;77m  @akibahack \e[0m\e[1;93m.:.\e[0m\n"
printf "\n" 

#Options Menu 

printf "\e[1;35m[01]\e[0m \e[1;33mShow my ip address\e[0m \n"
printf "\e[1;35m[02]\e[0m \e[1;33mChange my MAC\e[0m \n"
printf "\e[1;35m[03]\e[0m \e[1;33mNmap Network Scanning\e[0m \n"
printf "\n"
printf "\e[1;35m[99]\e[0m \e[1;33mExit\e[0m \n"
printf "\n"
printf "\e[1;92m[*] Choose an option: \e[0m \n"
}

clear
while :
do
	banner
	read option
	case $option in
		1)
			showip
			wait;; 
		2)
			changemac ;;
		3)	
			nmapscan ;;
		99)
			fexit;;
	esac
done
