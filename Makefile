VER=1.1.0

all: bazel-$(VER)-installer-linux-x86_64.sh

setup: bazel-$(VER)-installer-linux-x86_64.sh
	@echo Step 1: Install required packages
	sudo -E apt-get install -y pkg-config zip g++ zlib1g-dev unzip python3
	@echo Step 2: Download Bazel
	chmod +x bazel-$(VER)-installer-linux-x86_64.sh
	./bazel-$(VER)-installer-linux-x86_64.sh --user
	@echo Step 4: Set up your environment
	@echo see dotfiles/.bash.d/homebin.sh

bazel-$(VER)-installer-linux-x86_64.sh:
	curl -OL https://github.com/bazelbuild/bazel/releases/download/1.1.0/bazel-1.1.0-installer-linux-x86_64.sh
