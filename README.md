# EDU Meeting Overview

The EDU Meeting application is an innovative platform designed to bring students, influencers, and faculty members together in a virtual environment. It offers
 online courses, allows students to attend upcoming educational meetings, and facilitates interaction with influencers and educators. Through the platform, students can gain guidance, enroll in courses, and connect with faculty members in real time. The goal is to enhance learning experiences by making education more accessible and interactive, helping students and teachers collaborate seamlessly in the digital space.

# Project Overview

This project leverages Kubernetes (K8s) for deployment, enabling scalable and efficient management of the EDU Meeting platform.The frontend is served by Nginx, the backend is powered by a Python application, and data is stored in a PostgreSQL database. Docker is used to create images of these components, which are pushed to Docker Hub Repossitory.The entire process is automated by fetching code from GitHub, building it with a pom.xml file, and deploying all services (frontend, backend, database) on Kubernetes. In Kubernetes, an Ingress Controller is used with a LoadBalancer to manage and route incoming traffic efficiently to the appropriate services. The LoadBalancer handles external traffic and forwards it to the Ingress Controller, which then directs the traffic to the respective backend services, ensuring high availability and seamless communication between components.
