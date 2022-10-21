#!/bin/sh

# ussage: sh make
rm -f ./xgen
rm -f $GOPATH/bin/xgen
go build -o ./xgen ./cmd/xgen/xgen.go
mv ./xgen  $GOPATH/bin/