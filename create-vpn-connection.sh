#!/bin/bash
aws ec2 create-vpn-connection --dry-run --region us-east-1 --type ipsec.1 --customer-gateway-id cgw-c16e87a8 --vpn-gateway-id vgw-eca54d85 --options "{\"StaticRoutesOnly\":true}"
