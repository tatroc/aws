#!/bin/bash
aws ec2 create-vpn-connection --region us-east-1 --type ipsec.1 --customer-gateway-id cgw-c16e87a8 --vpn-gateway-id vgw-eca54d85 --options "{\"StaticRoutesOnly\":true}" > /c/temp/output-create-vpn-connection

aws ec2 create-vpn-connection-route --vpn-connection-id vpn-40f41529 --destination-cidr-block 10.77.77.0/24 > /c/temp/output-create-vpn-connection-route