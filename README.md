🚀 FastAPI on Azure with Docker & CI/CD

## 📌 Overview
This project demonstrates deploying a **FastAPI** web application to **Azure App Service** using:
- **Docker** for containerisation  
- **GitHub Actions** for CI/CD automation  
- **Azure Container Registry (ACR)** for image storage

The goal was to show how application deployments can be made **automated**, **repeatable**, and **reliable**, rather than manual pushes.

---

## 🛠️ Tech Stack
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)

---

## 📂 Project Structure
**fastapi-azure-cicd/**  
├─ **app/**  
│   ├─ **main.py** → FastAPI application code  
│   ├─ **requirements.txt** → Dependencies  
├─ **Dockerfile** → Docker build instructions  
├─ **.github/workflows/ci-cd.yml** → GitHub Actions pipeline  
├─ **README.md** → Project write-up  

---

## 🌍 Real-World Relevance
This project reflects typical DevOps workflows:
- **Containerisation:** consistent app packaging across environments  
- **CI/CD Automation:** reliable builds & deployments on every commit  
- **Cloud Deployment:** scalable web app hosted in Azure App Service  
- **Health Checks:** smoke test ensures the app runs after deployment  

---

## ⚡ Features
- REST API with FastAPI  
- Dockerized for portability  
- Automated build & push to Azure Container Registry  
- Deployment to Azure App Service  
- Smoke test verifies health after deployment  

---

## 🚀 Deployment Pipeline
GitHub Actions runs on every push to `main`:
1. **Checkout** → Pull code  
2. **Azure Login** → Authenticate with Service Principal  
3. **Build Docker Image** → Package FastAPI app  
4. **Push Image** → Upload to ACR  
5. **Deploy** → Deploy container to Azure App Service  
6. **Smoke Test** → Verify `/health` endpoint  

---

## 📦 Endpoints
- `GET /` → Welcome message  
- `GET /health` → Returns app health status  

Example response for `/`:
```json
{
  "message": "Hello from FastAPI in Docker with CI/CD"
}
'''

Example response for `/`:
```json
{
  "status": "healthy"
}
'''