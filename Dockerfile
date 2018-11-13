FROM nginx:latest
RUN DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt dist-upgrade -y && \
    apt install -y nginx-extras ca-certificates gettext-base curl && \
    rm -rf /var/cache/apt && rm -rf /var/lib/apt
CMD ["nginx", "-g", "daemon off;"]