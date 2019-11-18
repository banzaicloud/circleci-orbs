workdir = $(shell pwd)

bin:
	mkdir -p bin

bin/circleci: bin
	curl -fLSs https://circle.ci/cli | DESTDIR=${workdir}/bin bash

cli-setup: bin/circleci
	[bin/circleci -f ${HOME}/.circleci/cli.yml ] || bin/circleci setup

validate: cli-setup
	find . -name '*.yml' -exec bin/circleci orb validate {} \;


