module qperf-go

go 1.20

replace (
	github.com/quic-go/qtls-go1-20 => ./qtls-go1-20 //github.com/birneee/qtls-go1-20 v0.0.0-20230822163111-cfa94cb80061
	github.com/quic-go/quic-go => ./quic-go-disable-encryption //github.com/birneee/quic-go v0.23.1-0.20230822171725-abb8bb94c5ff //  ./quic-go //./quic-go-disable-encryption //

)

require (
	github.com/francoispqt/gojay v1.2.13
	github.com/quic-go/quic-go v0.38.1
	github.com/stretchr/testify v1.6.1
	github.com/urfave/cli/v2 v2.25.7
	golang.org/x/exp v0.0.0-20230817173708-d852ddb80c63
)

require (
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/google/pprof v0.0.0-20230821062121-407c9e7a662f // indirect
	github.com/onsi/ginkgo/v2 v2.12.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/quic-go/qtls-go1-20 v0.3.4 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673 // indirect
	golang.org/x/crypto v0.12.0 // indirect
	golang.org/x/mod v0.12.0 // indirect
	golang.org/x/net v0.14.0 // indirect
	golang.org/x/sys v0.11.0 // indirect
	golang.org/x/tools v0.12.1-0.20230815132531-74c255bcf846 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
