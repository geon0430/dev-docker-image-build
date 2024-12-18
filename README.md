
# Dev Docker Image Build Setting

This repository contains Dockerfiles used to build Docker images for development purposes across multiple programming languages: **Python**, **Golang**, and **Java**.

---

## Overview

| **Language** | **Description**                                                                                 |
|--------------|-------------------------------------------------------------------------------------------------|
| **Python**   | Images configured for NVIDIA GPU-based development using CUDA libraries like TensorRT, CuPy, and cuCIM. Also includes video processing libraries such as GStreamer and FFmpeg. |
| **Golang**   | Images set up for Go-based application development in containerized environments.               |
| **Java**     | Images for building and running Java-based applications within Docker containers.               |

---

## Language-Specific Details

### Python
- **Purpose**:
  - Enable NVIDIA GPU-based development.
  - Support CUDA-accelerated libraries:
    - **TensorRT**: AI/ML model optimization and inference.
    - **CuPy**: GPU-accelerated array computation.
    - **cuCIM**: GPU-accelerated image processing.
  - Video processing setup with:
    - **GStreamer**
    - **FFmpeg**
- **Target Platform**: NVIDIA Jetson devices and general-purpose NVIDIA GPU development.

---

### Golang
- **Purpose**:
  - Lightweight and efficient containerized development for Go applications.
- **Key Features**:
  - Configured for general-purpose Golang development.
  - Can be extended for use with specific Go frameworks or tools.

---

### Java
- **Purpose**:
  - Build and run Java-based applications in a containerized environment.
- **Key Features**:
  - Supports JDK installation and configuration.
  - Extensible for various Java frameworks and tools.

---

## Usage
Clone the repository and use the provided Dockerfiles to build development images for the desired language environment.
