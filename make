#!/bin/sh

# ussage: sh make
# GOPATH=$GOPATH  # old
GOPATH=$HOME'/go' # new

# bin folder
GOBIN=$GOPATH'/bin'
echo 'GO BIN:'$GOBIN

# clean
rm -f ./xgen
rm -f $GOBIN/xgen

# build and move to go bin
go build -o ./xgen ./cmd/xgen/xgen.go
mv ./xgen  $GOBIN
