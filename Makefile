workdir = $(shell pwd)

bin/circleci:
	mkdir -p bin
	curl -fLSs https://circle.ci/cli | DESTDIR=${workdir}/bin bash

validate: bin/circleci
	find . -maxdepth 1 -name '*.yml' -exec bin/circleci orb validate {} \;
