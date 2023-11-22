FROM python:3.11
ARG USERNAME=app
ARG USER_UID=1000
ARG USER_GID=$USER_UID

WORKDIR /app/

# https://docs.python.org/3/using/cmdline.html#envvar-PYTHONDONTWRITEBYTECODE
# Prevents Python from writing .pyc files to disk
ENV PYTHONDONTWRITEBYTECODE 1

# ensures that the python output is sent straight to terminal (e.g. your container log)
# without being first buffered and that you can see the output of your application (e.g. django logs)
# in real time. Equivalent to python -u: https://docs.python.org/3/using/cmdline.html#cmdoption-u
ENV PYTHONUNBUFFERED 1
# don't cache downloaded pip packages
ENV PIP_NO_CACHE_DIR=1
# disable version check of pip
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV ENVIRONMENT prod
ENV TESTING 0

ENV PYTHONPATH=/app:/app/local

COPY startup /startup
COPY apis_instance /app/
COPY apis /usr/local/bin/

RUN groupadd --gid $USER_GID $USERNAME && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME && chown -R $USERNAME /app /usr/local && pip install "gunicorn>=21.2.0" && pip install . && apt-get update && apt-get install -y tmux && rm -rf /var/lib/apt/lists/*

USER $USERNAME

CMD ["/usr/local/bin/apis"]
