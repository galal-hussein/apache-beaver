# Add the address of logstash server (env: LOGSTASH_SRV)
if env | grep -q "$LOGSTASH_SRV"
then
    sed -i "s/tcp_host.*/tcp_host: $LOGSTASH_SRV/g" /etc/beaver/beaver.conf
fi
######## START YOUR SERVICES HERE #########

#start apache
service apache2 restart

################# END #####################

# starting beaver
beaver -c /etc/beaver/beaver.conf -C /etc/beaver/conf.d -t tcp
