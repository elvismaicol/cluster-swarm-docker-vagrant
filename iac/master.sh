#!/bin/bash
#Iniciando o cluster e configurando esta maquina como master e ip 10.10.10.100
sudo docker swarm init --advertise-addr=10.10.10.100
# Gerando o arquivo com serial para integrar a maquina no cluster ("worker.sh") 
    #(O comando lê o token e armazena no arquivo)
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh