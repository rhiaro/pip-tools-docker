FROM python:3.9.1-slim-buster

WORKDIR /code

RUN set -eux \
    && apt-get update \
    && apt-get install --yes --only-upgrade openssl ca-certificates \
    && pip install --upgrade pip setuptools wheel pip-tools \
    && rm -rf /root/.cache/pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["pip-compile", "--verbose"]