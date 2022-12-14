# Docker image for python 3.9 app ./src/app.py
# Build: docker build -t python-app:latest .
# Run: docker run -it --rm --name python-app python-app:latest

FROM python:3


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY src/app.py ./app.py
COPY src/powerstudio_gateway.py ./powerstudio_gateway.py

CMD ["python", "./app.py"]
