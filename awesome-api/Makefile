build:
	go build -o awesome-api .

run:
	./awesome-api > awesome.log 2>&1 &

stop:
	kill $(shell pgrep awesome-api) || true

clean:
	rm -f awesome-api awesome.log

test:
	curl -s http://localhost:9999
	curl -s http://localhost:9999/health

help:
	@echo "build: Compile the binary"
	@echo "run: Start the server"
	@echo "stop: Stop the server"
	@echo "clean: Remove binary and logs"
	@echo "test: Test the API"
	@echo "help: Show this message"
