for i in $(seq 10); do
 aws lightsail get-instance \
   --instance-name tutorial-$(printf %02d $i) | jq '.instance.publicIpAddress'
done

