FROM hashicorp/terraform:0.10.5
LABEL maintainer="Simon Rycroft, simon.rycroft@gmail.com"

RUN mkdir -p /terraform
WORKDIR /terraform

COPY . ./
