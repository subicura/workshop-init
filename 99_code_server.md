# code server

VSCode 온라인

```sh
wget https://github.com/cdr/code-server/releases/download/1.1156-vsc1.33.1/code-server1.1156-vsc1.33.1-linux-x64.tar.gz
tar xvfz code-server1.1156-vsc1.33.1-linux-x64.tar.gz
sudo mv code-server1.1156-vsc1.33.1-linux-x64/code-server /usr/local/bin
mkdir ~/project
curl https://gist.githubusercontent.com/subicura/d025000486d30d92dfa6ccc523c3f5e3/raw/2e93bb0dca992523a3e3a6fdba95d2f3526c52db/codeserver.service -o /lib/systemd/system/codeserver.service
systemctl start codeserver
systemctl enable codeserver
```

http://xxxx:8000 접속합니다. 비밀번호는 1q2w3e4r 입니다.
