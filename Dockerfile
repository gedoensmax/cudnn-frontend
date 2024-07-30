FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04
RUN apt-get update && apt-get install -y cmake ninja-build build-essential git python3-pip python-is-python3
RUN python3 -m pip install -U pip cuda-python
ENV CUDNN_PATH="/usr/local/cuda"
ENV CUDAToolkit_ROOT="/usr/local/cuda"

#RUN python3 -m pip install -v git+https://github.com/NVIDIA/cudnn-frontend.git@v1.5.2
