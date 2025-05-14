# bash
docker stop mymodelapp 2>/dev/null || true
docker rm mymodelapp 2>/dev/null || true
docker build -t mymodelimage --tag latest .
docker run -d --name mymodelapp -p 8000:8000 mymodelimage:latest
