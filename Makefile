ASCII_DOCTOR_IMAGE := asciidoctor/docker-asciidoctor:latest

docs:
	docker run -v $(PWD):/documents/ $(ASCII_DOCTOR_IMAGE) asciidoctor -a toc -o README.html -r asciidoctor-diagram README.adoc
.PHONY: docs

docs-dev:
	nodemon -e adoc -w ./README.adoc -x make docs
.PHONY: docs-dev
