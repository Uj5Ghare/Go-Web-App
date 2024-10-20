# Go Web Application

## Overview

The Go-Web-App is a web application built with Go. This repository includes a GitHub Actions workflow to automate code quality checks, SonarQube analysis, application builds, Docker image vulnerability checks, and deployment to EKS Cluster. 

## Tools Used
- **Programming Languages:** Golang & HTML
- **Cloud Platforms:** AWS (EKS,EC2,VPC,IAM,S3)
- **CI/CD Tools:** GitHub Actions & GitLab CI/CD
- **SCM Tools:** Git, GitHub, GitLab
- **Contaniration Platform:** Docker
- **Container Orchstrator:** Kubernetes(EKS),
- **K8s Package Manager:** Helm 
- **Infrastructure As Code Tool:** Terraform
- **Process Management Tool:** PM2
- **Security Management Tools:** SonarQube & Trivy,

## Workflow

The GitHub Actions workflow consists of several jobs that run on different triggers, including pushes to `main` and `dev` branches, pull requests, and manual triggers.

### Key Jobs

1. **Code Quality Check**
   - Runs `golangci-lint` to ensure code quality on push to `main` and `dev` branches.

2. **SonarQube Analysis**
   - Performs static code analysis using SonarQube for both production (`main`) and development (`dev`) branches.

3. **Build Application**
   - Builds the Go application for production and development branches, runs tests, and installs necessary packages (like PM2).

4. **Image Vulnerability Checks**
   - Scans Docker images for vulnerabilities using Trivy after building the application.

5. **Push to Docker Hub**
   - Pushes the built Docker image to Docker Hub with appropriate tags for production and development.

6. **Update Helm Chart**
   - Updates the Helm chart with the new image tag upon successful deployment to production.

## Setup

### Prerequisites

- Ensure you have the following secrets set in your GitHub repository:
  - `DOCKERHUB_USERNAME`: Your Docker Hub username.
  - `DOCKERHUB_TOKEN`: A token for authenticating with Docker Hub.
  - `SONAR_TOKEN`: Your SonarQube token.
  
### Workflow Configuration

The workflow is defined in the `.github/workflows/gh-cicd.yml` file.

## Additional Notes

- This project follows best practices for CI/CD with a focus on automation and security.
- Ensure to keep your Go and Docker dependencies updated.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries, feel free to contact [Ujwal Pachghare](mailto:ujwal5ghare@gmail.com).

---
---

## Running the server

To run the server, execute the following command:

```bash
go run main.go
```

The server will start on port 8080. You can access it by navigating to `http://localhost:8080/courses` in your web browser.

## Looks like this

![Website](static/images/golang-website.png)
