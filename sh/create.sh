#/bin/sh
# medium_2_0(2cpu, 4g ram) or large_2_0(2cpu, 8g ram)

for i in $(seq 1); do
 aws lightsail create-instances \
   --instance-name tutorial-$(printf %02d $i) \
   --availability-zone ap-northeast-2a \
   --blueprint-id ubuntu_20_04 \
   --bundle-id large_2_0 \
   --user-data file://start_script
done
