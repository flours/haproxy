# 使い方
```
docker build -t myhaproxy .
docker run -v <cert file path>:/etc/ssl/private/tls.crt -v <key file path>:/etc/ssl/private/tls.crt.key  myhaproxy
```

# HAProxyをDockerから使います
kubernetesのSecretやdockerの-vオプションで以下の2つのファイルパスを通す必要があります  
```
/etc/ssl/private/tls.crt
/etc/ssl/private/tls.crt.key
```

# HAProxyのDockerImage
https://hub.docker.com/_/haproxy
