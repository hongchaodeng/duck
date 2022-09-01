#!/usr/bin/env bash

set -x

kubectl delete -f k8s/
kubectl create -f k8s/

/Users/hongchaodeng/.nh/bin/nhctl dev start default.application -d test \
  -t deployment  --without-terminal  -s $CODEDIR --container test \
  -i $BASEIMAGE  -n default \
  --kubeconfig $KUBECONFIG


registry.cn-hongkong.aliyuncs.com/h8rdev/devbox