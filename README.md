# PIPELINE: Microservice CI/CD Assembly Line

A fully automated Continuous Integration and Continuous Delivery (CI/CD) pipeline built to test, validate, and containerize a Python microservice, ensuring zero-downtime deployments.

## 🛠 Tech Stack
* **Language**: Python 3 (`Flask`, `pytest`)
* **CI/CD Orchestration**: GitHub Actions
* **Containerization**: Docker
* **Environment**: Linux (Ubuntu)

## 🚀 Key SRE Features
* **Automated Testing (CI)**: Implemented `pytest` within a GitHub Actions workflow to automatically test application logic on every commit, preventing regressions.
* **Deployment Gating (CD)**: Engineered the pipeline to build Docker images *only* if all unit tests pass, acting as an automated shield against broken code reaching production.
* **Immutable Artifacts**: Packaged the Flask application into a lightweight, version-controlled Docker image using a multi-stage-like `Dockerfile` optimized for caching.
* **Dependency Management**: Locked application dependencies using strict versioning to prevent environment drift between local and cloud environments.

## 🏗 Pipeline Architecture
1. **Developer pushes code** to the `main` branch.
2. **GitHub Actions runner** provisions an ephemeral Ubuntu server.
3. **Continuous Integration**: The runner installs dependencies and executes `pytest`.
4. **Continuous Delivery**: Upon passing tests, the runner packages the app into a `Docker` container ready for cloud deployment.

## 💻 Quick Start Guide

**1. Clone the repository:**
```bash
git clone [https://github.com/YOUR_USERNAME/pipeline-project.git](https://github.com/YOUR_USERNAME/pipeline-project.git)
cd pipeline-project
## 🗺️ SRE Portfolio Context
This microservice pipeline is **Part 2** of my CloudOps portfolio. 
* ⬅️ **Part 1:** [SENTINEL: Uptime Monitor](https://github.com/sandeepsilumula/sentinel-project)
* ➡️ **Part 3:** (Coming Soon: Terraform Infrastructure)
