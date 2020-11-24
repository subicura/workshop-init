# code server

VSCode 온라인

## v3

최소 램 2G 이상 필요

```sh
wget https://github.com/cdr/code-server/releases/download/v3.7.2/code-server-3.7.2-linux-amd64.tar.gz
tar xvfz code-server-3.7.2-linux-amd64.tar.gz
mkdir -p ~/.config/code-server
curl https://gist.githubusercontent.com/subicura/d7ac0cc6e662e8382e191d81c140c35b/raw/c904e8d5b3971af19e95a887cdd1bca0c916ccd8/config.yaml -o ~/.config/code-server/config.yaml
mkdir ~/project
sudo curl https://gist.githubusercontent.com/subicura/c803fd68262736d83ee67b201d87fb3c/raw/dc95e9a3e4db84a3f148cc870e640d857296e2b6/codeserver.service -o /lib/systemd/system/codeserver.service
sudo systemctl start codeserver
sudo systemctl enable codeserver
```

## v2

```sh
wget https://github.com/cdr/code-server/releases/download/2.1688-vsc1.39.2/code-server2.1688-vsc1.39.2-linux-x86_64.tar.gz
tar xvfz code-server2.1688-vsc1.39.2-linux-x86_64.tar.gz
sudo mv code-server2.1688-vsc1.39.2-linux-x86_64/code-server /usr/local/bin
mkdir ~/project
sudo curl https://gist.githubusercontent.com/subicura/d025000486d30d92dfa6ccc523c3f5e3/raw/2e93bb0dca992523a3e3a6fdba95d2f3526c52db/codeserver.service -o /lib/systemd/system/codeserver.service
sudo systemctl start codeserver
sudo systemctl enable codeserver
```

http://xxxx:8000 접속합니다. 비밀번호는 1q2w3e4r 입니다.
