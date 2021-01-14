#/bin/sh

for i in $(seq 1); do
 aws lightsail delete-instance \
   --instance-name tutorial-$(printf %02d $i)
done