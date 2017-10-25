all: build run

build:
	docker build -t tensorflow -f Dockerfile.ppc64le .

run:
	docker run -ti --rm -v nvidia_driver_384.81:/usr/local/nvidia --device /dev/nvidia0 --device /dev/nvidia1 --device /dev/nvidia2 --device /dev/nvidia3 --device /dev/nvidiactl --device /dev/nvidia-uvm --device /dev/nvidia-uvm-tools -e NVIDIA_VISIBLE_DEVICES=all tensorflow bash

