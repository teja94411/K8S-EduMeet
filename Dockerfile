FROM nginx:latest
WORKDIR /frontend
COPY frontend/ .

FROM python:3.9-slim
WORKDIR /backend
COPY backend/ .
RUN pip install --no-cache-dir -r requirements.txt

FROM nginx:latest
WORKDIR /app
COPY --from=frontend-build /frontend /usr/share/nginx/html
COPY --from=backend-build /backend /backend
EXPOSE 80 5000
CMD ["bash", "-c", "python /backend/app.py & nginx -g 'daemon off;'"]
