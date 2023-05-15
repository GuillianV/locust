# Dockerfile, Image, Container
# Container with python version 3.10
FROM python:3.10

RUN apt-get update && apt-get install -y && apt install nano -y

WORKDIR /app

# upgrade pip and install pip packages
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir numpy

RUN pip install locust
    # Note: we had to merge the two "pip install" package lists here, otherwise
    # the last "pip install" command in the OP may break dependency resolution...

# run python program
ENTRYPOINT ["tail","-f","/dev/null"]
