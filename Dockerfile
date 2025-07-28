FROM python:3.11-alpine as compile-image
ARG USERNAME=app

COPY apis_instance /app/
WORKDIR /app/

# https://docs.python.org/3/using/cmdline.html#envvar-PYTHONDONTWRITEBYTECODE
# Prevents Python from writing .pyc files to disk
ENV PYTHONDONTWRITEBYTECODE 1

# don't cache downloaded pip packages
ENV PIP_NO_CACHE_DIR=1
# disable version check of pip
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

RUN adduser --disabled-password $USERNAME --home /app && \ 
    apk add --no-cache --virtual .build-dependencies-in-virtual-world libpq-dev openldap-dev libsasl gcc musl-dev

USER $USERNAME

RUN pip install --user uvicorn gunicorn && pip install --user .




FROM python:3.11-alpine AS build-image

WORKDIR /app/

ARG USERNAME=app
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# https://docs.python.org/3/using/cmdline.html#envvar-PYTHONDONTWRITEBYTECODE
# Prevents Python from writing .pyc files to disk
ENV PYTHONDONTWRITEBYTECODE 1

COPY startup /startup
COPY apis /usr/local/bin/
COPY --from=compile-image /app/ /app/

RUN adduser --disabled-password $USERNAME --home /app && chown -R $USERNAME /app && \
    apk add --no-cache --virtual .build-dependencies-in-virtual-world run-parts tmux postgresql-client libldap gettext git graphviz procps

# ensures that the python output is sent straight to terminal (e.g. your container log)
# without being first buffered and that you can see the output of your application (e.g. django logs)
# in real time. Equivalent to python -u: https://docs.python.org/3/using/cmdline.html#cmdoption-u
ENV PYTHONUNBUFFERED 1
ENV ENVIRONMENT prod
ENV TESTING 0
ENV PYTHONPATH=/app:/app/.local/lib/python3.11
ENV PATH=$PATH:/app/.local/bin

USER $USERNAME

CMD ["/usr/local/bin/apis"]
