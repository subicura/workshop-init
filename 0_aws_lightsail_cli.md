# AWS Lightsail CLI

workshop은 [AWS](https://aws.amazon.com/)의 [Lightsail](https://lightsail.aws.amazon.com/)을 이용하여 가상머신을 생성하여 실습합니다.
총 비용은 한달동안 사용했을때 약 $20이며 8시간 실습을 하면 약 500원 정도가 나옵니다.

## 소개

AWS CLI를 이용하여 가상머신을 설정하는 방법을 소개합니다.

## 설정 내용

- 크롬 브라우저에서 바로 사용할 수 있는 웹용 터미널 프로그램(wetty)를 사용합니다.
  - [wetty](https://github.com/krishnasrinivas/wetty) 웹 기반 terminal - http://xxxx:4200
  - 별도의 ssh용 키를 생성하지 않고 ID/Password를 사용합니다. (ID: ubuntu, Password: 1q2w3e4r)
- 전체 포트 방화벽을 오픈합니다.

## 가상 서버 생성

**sh/create.sh**

- 생성 개수를 변경하려면 `seq 1` 부분을 수정합니다.
- 사양은 medium_2_0 (2cpu 4G ram) 또는 large_2_0 (2cpu 8G ram)을 추천합니다.

```
for i in $(seq 1); do
 aws lightsail create-instances \
   --instance-name tutorial-$(printf %02d $i) \
   --availability-zone ap-northeast-2a \
   --blueprint-id ubuntu_18_04 \
   --bundle-id medium_2_0 \
   --user-data file://start_script
done
```

**sh/get-ip.sh**

- 생성한 서버의 IP를 조회합니다.

```
for i in $(seq 1); do
 aws lightsail get-instance \
   --instance-name tutorial-$(printf %02d $i) | jq '.instance.publicIpAddress'
done
```

**sh/open-fw.sh**

- 방화벽을 오픈합니다.

```
for i in $(seq 1); do
 aws lightsail open-instance-public-ports \
   --instance-name tutorial-$(printf %02d $i) \
   --port-info fromPort=0,toPort=65535,protocol=all
done
```

**sh/delete.sh**

- 서버를 제거합니다.

```
for i in $(seq 1); do
 aws lightsail delete-instance \
   --instance-name tutorial-$(printf %02d $i)
done
```
