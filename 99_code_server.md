# code server

VSCode 온라인

## v3

최소 램 2G 이상 필요

```sh
wget https://github.com/cdr/code-server/releases/download/v3.11.1/code-server-3.11.1-linux-amd64.tar.gz
tar xvfz code-server-3.11.1-linux-amd64.tar.gz
mkdir -p ~/.config/code-server
curl https://gist.githubusercontent.com/subicura/d7ac0cc6e662e8382e191d81c140c35b/raw/d663f09e9730ab7fe7bb2dc17f7ef59d9da43d4f/config.yaml -o ~/.config/code-server/config.yaml
mkdir ~/project
sudo curl https://gist.githubusercontent.com/subicura/09d3abe20a0a0506eab3936ce36a6832/raw/5980b3623886254a5e77fa18712090e6667af048/codeserver.service -o /lib/systemd/system/codeserver.service
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

http://xxxx:8000 접속합니다. 비밀번호는 1q2w3e4r!! 입니다.
