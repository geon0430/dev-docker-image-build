
# NVIDIA Jetson AGX Orin Development Docker Image

This Docker image is designed for development on the **NVIDIA Jetson AGX Orin** platform. 

**For detailed installation instructions, visit the official NVIDIA documentation**
[NVIDIA Container Toolkit Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)


| **Feature**           | **Description**                                                                 |
|------------------------|--------------------------------------------------------------------------------|
| **Platform**           | NVIDIA Jetson AGX Orin (Jetson is based on AMD64 architecture)                 |
| **JetPack Version**    | 6.1                                                                            |
| **CUDA Version**       | 12.x                                                                           |
| **Python Version**     | 3.10                                                                           |
| **TensorRT Version**   | 10.3.0                                                                         |
| **Base Image**         | NVIDIA L4T CUDA (supports CUDA-based development)                              |

---

## Why NVIDIA L4T CUDA?

The image is built on **NVIDIA L4T CUDA** instead of **NVIDIA L4T TensorRT**, as:
- **NVIDIA L4T CUDA** includes CUDA libraries, enabling the installation of libraries like `CuPy` and `cuCIM`, which are essential for CUDA-based operations.
- **NVIDIA L4T TensorRT** does not include CUDA, limiting flexibility in development.

---

## Usage

To use this Docker image
   ```bash
   bash build_docker.sh
   ```

---
