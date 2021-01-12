for i in $(seq 10); do
 aws lightsail open-instance-public-ports \
   --instance-name tutorial-$(printf %02d $i) \
   --port-info fromPort=3000,toPort=65535,protocol=TCP
done
