# EDU Meeting Application

## Overview
The EDU Meeting platform connects students, influencers, and faculty members in a virtual environment to enhance learning experiences. The platform offers online courses, allows students to attend upcoming educational meetings, and facilitates real-time interactions with influencers and educators. The application is powered by ReactJS for the frontend, Python for the backend, PostgreSQL for data storage, Docker for containerization, and Kubernetes (K8s) for orchestration.

## Project Architecture

- **Frontend**: ReactJS application served by Nginx.
- **Backend**: Python application (Flask or Django) served by a web server.
- **Database**: PostgreSQL.
- **Containerization**: Docker images for each component.
- **Deployment**: Kubernetes (K8s) for orchestration and scaling.
- **CI/CD**: Jenkins pipeline for automated builds and deployments.

## Technologies Used

- ReactJS
- Python (Flask/Django)
- PostgreSQL
- Docker
- Jenkins
- Kubernetes (K8s)
- Nginx
- GitHub (for source control)


## Prerequisites

Before running this project, ensure you have the following tools installed:

- [Docker](https://www.docker.com/get-started) for building and running containers.
- [Kubernetes](https://kubernetes.io/docs/setup/) for deploying the application.
- [kubectl](https://kubernetes.io/docs/reference/kubectl/) for interacting with your Kubernetes cluster.
- [Minikube](https://minikube.sigs.k8s.io/docs/) for local Kubernetes cluster setup.
- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) for running ReactJS frontend.
- [Python](https://www.python.org/) (Flask or Django) for the backend.

## Setup Instructions

### 1. Clone the Repository

Clone the repository to your local machine.

```bash
git clone https://github.com/yourusername/edu-meeting-app.git
cd edu-meeting-app
```

### 2. Build Docker Containers
For Frontend (ReactJS)
Navigate to the frontend directory and build the Docker image.

```bash
cd frontend
docker build -t edu-meeting-frontend .
```

For Backend (Python)
Navigate to the backend directory and build the Docker image.

```bash
cd backend
docker build -t edu-meeting-backend .
```

For PostgreSQL
You can either use a pre-configured PostgreSQL image or build a custom one if needed.

```bash

docker build -t edu-meeting-database ./database
```

### 3. Local Development with Docker Compose
For local development, you can use docker-compose to spin up the services together.

```bash
docker-compose up --build
```

This will start the frontend, backend, and database in separate containers. The frontend will be available at http://localhost:3000, and the backend will run on http://localhost:5000.

### 5. Kubernetes Deployment
The Kubernetes manifest files are located in the k8s/ directory. These files define the deployment and services for the frontend, backend, and PostgreSQL.

Apply Kubernetes Manifests
```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/ingress.yaml
kubectl apply -f k8s/service.yaml
```

These commands will deploy the services and expose them via Ingress and LoadBalancer.

### 6. Accessing the Application
Once deployed on Kubernetes, you can access the frontend using Minikube. Use the following command to get the frontend URL:

```bash
minikube service frontend-services --url
```

This will output the URL through which you can access the frontend on your local machine.

Contributing
We welcome contributions to the project! To contribute, please fork the repository, create a new branch, and submit a pull request. Make sure to follow the code style and include tests where applicable.

# EDU Meeting Overview

The EDU Meeting application is an innovative platform designed to bring students, influencers, and faculty members together in a virtual environment. It offers
 online courses, allows students to attend upcoming educational meetings, and facilitates interaction with influencers and educators. Through the platform, students can gain guidance, enroll in courses, and connect with faculty members in real time. The goal is to enhance learning experiences by making education more accessible and interactive, helping students and teachers collaborate seamlessly in the digital space.

# Project Overview

This project leverages Kubernetes (K8s) for deployment, enabling scalable and efficient management of the EDU Meeting platform.The frontend is served by Nginx, the backend is powered by a Python application, and data is stored in a PostgreSQL database. Docker is used to create images of these components, which are pushed to Docker Hub Repossitory.The entire process is automated by fetching code from GitHub, building it with a pom.xml file, and deploying all services (frontend, backend, database) on Kubernetes. In Kubernetes, an Ingress Controller is used with a LoadBalancer to manage and route incoming traffic efficiently to the appropriate services. The LoadBalancer handles external traffic and forwards it to the Ingress Controller, which then directs the traffic to the respective backend services, ensuring high availability and seamless communication between components.


![image](https://github.com/user-attachments/assets/8a523b0b-1556-43ef-90d6-caad7b6ca19f)
![image](https://github.com/user-attachments/assets/92a66515-f86f-404a-9e17-03c1c89045fe)
![image](https://github.com/user-attachments/assets/79a68d6e-ae88-49c7-9b07-48d0a420f342)
![image](https://github.com/user-attachments/assets/552250db-fe3c-4d23-b968-c9a831292e78)

