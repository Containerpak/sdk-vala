FROM ghcr.io/containerpak/gtk-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gobject-introspection libgee-0.8-dev valac && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
