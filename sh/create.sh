#/bin/sh
# or large_2_0

for i in $(seq 1); do
 aws lightsail create-instances \
   --instance-name tutorial-$(printf %02d $i) \
   --availability-zone ap-northeast-2a \
   --blueprint-id ubuntu_18_04 \
   --bundle-id medium_2_0 \
   --user-data file://start_script
done
