build:
	go build

doc:
	godoc -http=:6060 & echo $$! > .docpid
	xdg-open http://localhost:6060/pkg/github.com/serow/serow/

doc-stop:
	head .docpid | xargs kill
	rm -f .docpid

test:
	go test

.PHONY: build doc doc-stop test
