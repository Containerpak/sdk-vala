FROM ghcr.io/containerpak/gtk4-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gobject-introspection libgee-0.8-dev valac && \
    cpak-clean-junk
