# Workshop 개발 환경 셋팅하기

## 소개

실습이 필요한 워크샵을 진행할 때 동일한 환경에서 개발할 수 있도록 도와주는 가이드 입니다.

## 각종 설정

가상머신(2 cpu, 4G ram)을 사용하면 보통 8시간 실습에 1인당 500원 정도의 비용이 발생합니다.

### 서버 설정

- [AWS Lightsail 웹 콘솔](./0_aws_lightsail_console.md)
- [AWS Lightsail CLI](./0_aws_lightsail_cli.md)

IP를 할당 받았다면 크롬 브라우저에서 `http://{할당받은 IP}:4200` 으로 접속하세요.

- ID: ubuntu
- Password: 1q2w3e4r

> **주의** 비번 변경: 접속 후 `passwd` 입력

### 프로그램 설치

- [json 파서 프로그램 jq 설치](./1_jq.md)
- [docker 설치](./2_docker.md)
- [k3s 설치](./3_0_k3s.md)
  - [로컬 볼륨 플러그인 설치](./3_1_local_path_provisioner.md)
- [웹용 Visual Studio Code 서버 설치](./99_code_server.md)

## 문의 & 궁금한 사항

페이스북 메신저 또는 트위터로 연락주세요.

- https://www.facebook.com/subicura
- https://twitter.com/subicura
- subicura(at)subicura(dot)com
