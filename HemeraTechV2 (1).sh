#!/bin/bash

BOLD="\033[1m"
RESET="\033[0m"

echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Olá Usuário ^_^ , serei seu assistente para instalação do Sistema HeremaTech!"
echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Primeiro passo: Verificando se você possui o Java instalado...\n"
sleep 2

java -version
if [ $? -eq 0 ]; then
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Você já tem o Java instalado!"
else
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Opa! Não identifiquei nenhuma versão do Java instalada, mas sem problemas."
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Confirme para mim se realmente deseja instalar o Java para utilizar o Sistema HeremaTech? (s/n)\n"


read get
if [ "$get" == "s" ]; then
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Ok! Você escolheu instalar o Java ;D"
    sleep 2
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Atualizando os pacotes! Quase lá."
    sleep 2
    sudo apt update -y
    clear

    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Preparando para instalar a versão 17 do Java..."
    sudo apt install openjdk-17-jre -y
    clear
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Java instalado com sucesso!\n"
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Segundo passo: Instalando nosso sistema HeremaTech..."
    sleep 3

    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Criando diretório..."
    # colcar o w-get  e link do repositorio e os containers
    sleep 3
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Executando nosso sistema...\n"
	#colando o java -jar 
    sleep 5

    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Sistema instalado com sucesso"
else
    echo -e "$(tput setaf 5)${BOLD}[BOT MERA]:${RESET}$(tput setaf 13) Você optou por não instalar o Java por enquanto. Até a próxima então!"
fi
fi
