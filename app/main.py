# Step 1: Import FastAPI
# FastAPI is a modern Python web framework for building APIs quickly
from fastapi import FastAPI

# Step 2: Create the FastAPI app instance
app = FastAPI()

# Step 3: Define a root route
# This acts like a landing page for our API
@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI in Docker with CI/CD 🚀"}

# Step 4: Add a health check route
# Useful for monitoring and readiness probes in cloud environments
@app.get("/health")
def health_check():
    return {"status": "healthy"}
