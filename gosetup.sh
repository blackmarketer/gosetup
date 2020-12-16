#!/bin/bash

go_setup(){

wget -q https://golang.org/dl/go1.15.3.linux-amd64.tar.gz 

sudo tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz > /dev/null

echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

mkdir $HOME/go

echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc

source ~/.bashrc

go version
echo "go setup complete....."

}
go_setup
