.PHONY: build run all

build:
	javac -classpath servlet-api.jar WEB-INF/classes/com/foobar/*.java && \
	jar -cvf foo.war WEB-INF && \
	docker build -t topcat:latest .

run:
	docker run -it --rm -p 8080:8080 topcat

all: build run
