serow
=====

Helps you track your expenses and income


## Build

`make` or `make build`

or

`go build`


## Test

`make test`

or

`go test`

or

`go test github.com/serow/serow`


# Documentation

You need `godoc` for documentation.

`go get code.google.com/p/go.tools/cmd/godoc`

or

`go install code.google.com/p/go.tools/cmd/godoc`

or

`go build code.google.com/p/go.tools/cmd/godoc`

Run from repository root

`make doc`

to run doc server and

`make doc-stop`

to stop doc server.

Or, alternatively you can run doc server manually

`godoc -http=:6060`

and visit `localhost:6060/pkg/github.com/serow/serow`
