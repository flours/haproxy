# HAProxyをDockerから使います
reloader.shを起動しておくと1日1回リロードを行います。(ダウンタイムはありません。PID1にHUPを送ることでReloadしています。)  
reloaderはDocker runするだけじゃ起動しないので、docker exec やkubernetesのpoststartで起動します。  
また、kubernetesのSecretやdockerの-vオプションで以下の2つのファイルパスを通す必要があります  
```
/etc/ssl/private/tls.crt
/etc/ssl/private/tls.crt.key
```

# HAProxyのDockerImage
https://hub.docker.com/_/haproxy
