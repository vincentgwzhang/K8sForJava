
# K8sForJava Application

This repository contains the `K8sForJava` application, a simple Spring Boot application configured for Docker image creation and deployment.

## Overview

You can build and push Docker images for this application using **two methods**:
1. **Using a Dockerfile**
2. **Using the Jib Maven Plugin**

Below are step-by-step instructions for both approaches.

---

## Method 1: Using Dockerfile

### Prerequisites

- Install Docker on your system.
- Ensure you are logged into Docker Hub:
  ```bash
  docker login
  ```

### Steps to Build and Push

1. **Build the JAR file**:
   Run the Maven `package` command to generate the application JAR:
   ```bash
   mvn clean package
   ```

   This will create the JAR file in the `target` directory (e.g., `target/k8sforjava.jar`).

2. **Build the Docker image**:
   Use the `Dockerfile` to build the image:
   ```bash
   docker build -t vincentgwzhang/k8sforjava:latest .
   ```

3. **Tag the image (optional)**:
   Add a version tag to the image:
   ```bash
   docker tag vincentgwzhang/k8sforjava:latest vincentgwzhang/k8sforjava:0.0.1
   ```

4. **Push the image to Docker Hub**:
   Push both the `latest` and versioned tags to Docker Hub:
   ```bash
   docker push vincentgwzhang/k8sforjava:latest
   docker push vincentgwzhang/k8sforjava:0.0.1
   ```

---

## Method 2: Using Jib Maven Plugin

The Jib Maven Plugin allows you to build and push Docker images **without a Dockerfile**. It is integrated with your Maven build process.

### Prerequisites

- Ensure Docker Hub credentials are set up:
    - Either log in to Docker Hub:
  ```bash
  docker login
  ```
    - Or configure credentials directly in the `pom.xml` file.

### Steps to Build and Push

1. **Build and push the image**:
   Run the following Maven command to build and push the image directly to Docker Hub:
   ```bash
   mvn clean package jib:build
   ```

   Jib will automatically:
    - Build the application.
    - Push the image to Docker Hub with the following tags:
        - `vincentgwzhang/k8sforjava:latest`
        - `vincentgwzhang/k8sforjava:0.0.1` (version specified in `pom.xml`).

2. **Verify the image**:
   Check your Docker Hub repository to ensure the image is available.

# Step 2, Create HELM file
```bash
helm create k8sforjava
```
