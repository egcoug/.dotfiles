# Target to run the linux.sh script
linux: clean
	./bin/linux.sh

# Target to run the cleanup.sh script
clean:
	./bin/cleanup.sh

