# code server

VSCode 온라인

```sh
wget https://github.com/cdr/code-server/releases/download/1.1156-vsc1.33.1/code-server1.1156-vsc1.33.1-linux-x64.tar.gz
tar xvfz code-server1.1156-vsc1.33.1-linux-x64.tar.gz
sudo mv code-server1.1156-vsc1.33.1-linux-x64/code-server /usr/local/bin
mkdir ~/project
cd ~/project
PASSWORD=1q2w3e4r nohup code-server -p 18080 --allow-http &
```

http://xxxx:8080 접속합니다. 비밀번호는 1q2w3e4r 입니다.
