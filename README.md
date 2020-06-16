# 3kube-cli-tools

## Introduction

Dockerfile to be used by ci/cd tools (like Jenkins), built from an alpine based image containing all necessary cli tools to interact with K8s and AWS EKS.

## Changelog

*1.16.5*
* Downgrade TFLINT from 1.16.2 to 1.15.2 because it contains breaking changes

*1.16.4*
* Upgrade HELM 3.2.1 -> 3.2.3
* Upgrade TERRAFORM 0.12.24 -> 0.12.26
* Upgrade TFLINT 1.15.2 -> 0.16.2

*1.16.3*
* Added support for multiple uid

## 1.16.5 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.18.52 |
| HELM | 3.2.6 |
| TERRAFORM | 0.12.26 |
| CONFTEST | 0.18.2 |
| TFLINT | 0.15.2 |
| KUBECTL | 1.16.9 |
| JQ | 1.6 |
| FLUXCTL | 1.19.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.16.0 |
| SOPS | 3.5.0 |

## 1.16.4 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.18.52 |
| HELM | 3.2.6 |
| TERRAFORM | 0.12.26 |
| CONFTEST | 0.18.2 |
| TFLINT | 0.16.2 |
| KUBECTL | 1.16.9 |
| JQ | 1.6 |
| FLUXCTL | 1.19.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.16.0 |
| SOPS | 3.5.0 |

## 1.16.2 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.18.52 |
| HELM | 3.2.1 |
| TERRAFORM | 0.12.24 |
| CONFTEST | 0.18.2 |
| TFLINT | 0.15.2 |
| KUBECTL | 1.16.9 |
| JQ | 1.6 |
| FLUXCTL | 1.19.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.16.0 |
| SOPS | 3.5.0 |

## 1.16.1 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.18.52 |
| HELM | 3.1.3 |
| TERRAFORM | 0.12.24 |
| CONFTEST | 0.18.2 |
| TFLINT | 0.15.2 |
| KUBECTL | 1.16.9 |
| JQ | 1.6 |
| FLUXCTL | 1.19.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.16.0 |
| SOPS | 3.5.0 |

## 1.15.2 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.16.310 |
| HELM | 3.1.2 |
| TERRAFORM | 0.12.23 |
| CONFTEST | 0.18.0 |
| TFLINT | 0.15.2 |
| KUBECTL | 1.15.0 |
| JQ | 1.6 |
| FLUXCTL | 1.18.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.15.0 |
| SOPS | 3.5.0 |

## 1.15.1 Tools versions matrix

| Tool  | Version  |
|---|---|
| AWSCLI | 1.16.310 |
| HELM | 3.1.2 |
| TERRAFORM | 0.12.23 |
| CONFTEST | 0.18.0 |
| TFLINT | 0.15.2 |
| KUBECTL | 1.15.0 |
| JQ | 1.6 |
| FLUXCTL | 1.18.0 |
| YQ | 3.2.1 |
| EKSCTL | 0.15.0 |
