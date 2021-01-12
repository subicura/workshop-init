#/bin/sh

for i in $(seq 10); do
 aws lightsail delete-instance \
   --instance-name tutorial-$(printf %02d $i)
done