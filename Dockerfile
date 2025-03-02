# Stage 1: Build Frontend
FROM nginx:latest AS frontend-build
WORKDIR /frontend
COPY frontend/ .  

# Stage 2: Build Backend
FROM python:3.9-slim AS backend-build
WORKDIR /backend
COPY backend/ .  
RUN pip install --no-cache-dir -r requirements.txt  # Install backend dependencies

# Stage 3: Final image with both frontend (served via Nginx) and backend
FROM nginx:latest
WORKDIR /app

# Copy the built frontend from the frontend-build stage
COPY --from=frontend-build /frontend /usr/share/nginx/html

# Copy the backend from the backend-build stage
COPY --from=backend-build /backend /backend
EXPOSE 80 5000
CMD ["bash", "-c", "python /backend/app.py & nginx -g 'daemon off;'"]
