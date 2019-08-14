for i in $(seq 1); do
 aws lightsail open-instance-public-ports \
   --instance-name tutorial-$(printf %02d $i) \
   --port-info fromPort=0,toPort=65535,protocol=all
done
