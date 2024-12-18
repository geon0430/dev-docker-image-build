
# NVIDIA Ubuntu 22.04  Development Docker Image
This Docker image is designed for development on the Ubuntu 22.04 

**For detailed installation instructions, visit the official NVIDIA documentation**
[NVIDIA Container Toolkit Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)


| **Feature**           | **Description**                                                                 |
|------------------------|--------------------------------------------------------------------------------|
| **Platform**           | Ubuntu 22.04 (NVIDIA DOCKER(*x86_64))                                          |
| **CUDA Version**       | 12.x                                                                           |
| **Python Version**     | 3.8.10                                                                         |
| **Golang Version**     | 1.20.5                                                                         |
| **TensorRT Version**   | 8.5.2.2                                                                        |
| **Base Image**         | NVIDIA NVCR CUDA (supports CUDA-based development)                             |

---

## Why NVIDIA NVCR CUDA?
This Docker image is built on NVIDIA NVCR CUDA because it allows seamless integration with NVIDIA GPUs for accelerated computing.
To use this image, you must install NVIDIA Docker Runtime, which enables GPU support inside containers. 
By using NVIDIA Docker, you can leverage NVIDIA’s GPU libraries, such as CUDA and TensorRT, directly within the containerized environment.

---

## Usage

To use this Docker image
   ```bash
   bash build_docker.sh
   ```

---
