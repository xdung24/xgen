#!/bin/sh

# ussage: sh make
# GOPATH=$GOPATH  # old
GOPATH=$HOME'/go' # new
echo 'GO PATH:'$GOPATH

# bin folder
GOBIN=$GOPATH'/bin'
echo 'GO BIN:'$GOBIN

# clean old xgen file
echo "clean old xgen file"
rm -f ./xgen
rm -f $GOBIN/xgen

# build and move to go bin
echo "build and move to go bin"
go build -o ./xgen ./cmd/xgen/xgen.go
mv ./xgen  $GOBIN
