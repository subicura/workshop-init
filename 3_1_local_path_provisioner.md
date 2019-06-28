# Local path provisioner

https://github.com/rancher/local-path-provisioner/

Use HostPath for persistent local storage with Kubernetes

## Install

```
kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/deploy/local-path-storage.yaml
```

## Set default

```
kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```

**확인**

```
kubectl get storageclass
```
