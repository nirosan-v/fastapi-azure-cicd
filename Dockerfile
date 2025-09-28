# Step 1: Use an official lightweight Python image as base
FROM python:3.11-slim

# Step 2: Set the working directory inside the container
WORKDIR /code

# Step 3: Copy dependency list first (helps with Docker caching)
COPY ./app/requirements.txt /code/requirements.txt

# Step 4: Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Step 5: Copy the rest of the application code
COPY ./app /code/app

# Step 6: Expose port 8000 for the FastAPI app
EXPOSE 8000

# Step 7: Run the FastAPI app with Uvicorn
# 0.0.0.0 allows external connections (needed for Docker/Azure)
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
