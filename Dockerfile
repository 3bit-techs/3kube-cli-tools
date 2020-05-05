FROM alpine:3.10

LABEL maintainer="https://github.com/3bit-techs"

ENV AWSCLI_VERSION 1.18.52
ENV HELM_VERSION 3.1.3
ENV TERRAFORM_VERSION 0.12.24
ENV CONFTEST_VERSION 0.18.2
ENV TFLINT_VERSION 0.15.2
ENV KUBECTL_VERSION 1.16.9
ENV JQ_VERSION 1.6
ENV FLUXCTL_VERSION 1.19.0
ENV YQ_VERSION 3.2.1
ENV EKSCTL_VERSION 0.16.0
ENV SOPS_VERSION 3.5.0

RUN addgroup -S 3bit -g 1000 && adduser -S 3bit -G 3bit -u 1000

RUN apk add -U --no-cache python3 ca-certificates git curl make openssl openssh \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

RUN curl -sL -o tflint.zip https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip \
     && unzip -qq tflint.zip && rm -f tflint.zip \
     && install -g 3bit -o 3bit -m=+xrw tflint /usr/local/bin \
     && rm -f tflint

RUN curl -sL -o conftest.tar.gz https://github.com/instrumenta/conftest/releases/download/v0.18.0/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
     && tar -xf conftest.tar.gz conftest && rm -f conftest.tar.gz \
     && install -g 3bit -o 3bit -m=+xrw conftest /usr/local/bin \
     && rm -f conftest

RUN curl -sL -o kubectl curl -o kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
     && install -g 3bit -o 3bit -m=+xrw kubectl /usr/local/bin \
     && rm -f kubectl

RUN curl -sL -o terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
     && unzip -qq terraform.zip && rm -f terraform.zip \
     && install -g 3bit -o 3bit -m=+xrw terraform /usr/local/bin \
     && rm -f terraform

RUN curl -sL -o helm.tar.gz https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz \
     && tar -xf helm.tar.gz linux-amd64/helm && rm -f helm.tar.gz \
     && install -g 3bit -o 3bit -m=+xrw linux-amd64/helm /usr/local/bin \
     && rm -rf linux-amd64/helm

RUN curl -sL -o jq https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 \
     && install -g 3bit -o 3bit -m=+xrw jq /usr/local/bin \
     && rm -f jq

RUN curl -sL -o fluxctl https://github.com/fluxcd/flux/releases/download/${FLUXCTL_VERSION}/fluxctl_linux_amd64 \
     && install -g 3bit -o 3bit -m=+xrw fluxctl /usr/local/bin \
     && rm -f fluxctl

RUN curl -sL -o yq https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 \
     && install -g 3bit -o 3bit -m=+xrw yq /usr/local/bin \
     && rm -f yq

RUN curl -sL -o eksctl.tar.gz https://github.com/weaveworks/eksctl/releases/download/${EKSCTL_VERSION}/eksctl_Linux_amd64.tar.gz \
     && tar -xf eksctl.tar.gz eksctl && rm -f eksctl.tar.gz \
     && install -g 3bit -o 3bit -m=+xrw eksctl /usr/local/bin \
     && rm -f eksctl

RUN curl -sL -o sops https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux \
     && install -g 3bit -o 3bit -m=+xrw sops /usr/local/bin \
     && rm -f sops

USER 3bit

ENV HOME /home/3bit
