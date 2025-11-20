# Bored Room Cafe Landing Page

A static, responsive marketing page for the Ferness Estate cafe, packaged for deployment on Nginx.

## Project Structure

```
public/
	index.html        # Main site markup
	assets/           # Optimised images, fonts, icons
docs/
	screenshots/      # Reference UI captures
Dockerfile          # Nginx container image
docker-compose.yml  # Local smoke-test stack
Readme.md           # You are here
```

## Build & Run

```powershell
# Build without cache
docker build --no-cache -t nemesisguy/boredroom-cafe:latest .

# Run locally on http://localhost:8080
docker compose up --build

# Push to Docker Hub
docker push nemesisguy/boredroom-cafe:latest
```

The container serves the contents of `public/` from `/usr/share/nginx/html` using the lightweight `nginx:alpine` base image.