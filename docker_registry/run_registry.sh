#!/bin/bash

docker run -d \
  -p 127.0.0.1:5000:5000 \
  --restart=always \
  -v /var/lib/registry:/var/lib/registry \
  --name registry \
  registry:2



#  -v /usr/local/apache2/conf:/auth \
#  -v /etc/apache2/ssl/registry-sdc.argo.grnet.gr:/certs \
#  -e "REGISTRY_AUTH=htpasswd" \
#  -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
#  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
#  -e REGISTRY_HTTP_SECRET=XXXXXX \
#  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/registry-sdc_argo_grnet_gr.crt \
#  -e REGISTRY_HTTP_TLS_KEY=/certs/registry-sdc_argo_grnet_gr.key \
#  -p 443:443 \
#  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
#  -v /home/data/:/var/lib/registry \
