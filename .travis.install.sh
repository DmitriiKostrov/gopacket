#!/bin/bash

set -ev

go get github.com/google/gopacket
go get github.com/google/gopacket/layers
go get github.com/google/gopacket/tcpassembly
go get github.com/google/gopacket/reassembly
if [[ !("$TRAVIS_GO_VERSION" =~ ^1\.5 || "$TRAVIS_GO_VERSION" =~ ^1\.6) ]]; then
    go get github.com/google/gopacket/pcapgo
else
    echo "pcapgo not supported in go $TRAVIS_GO_VERSION"
fi
