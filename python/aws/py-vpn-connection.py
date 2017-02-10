
import boto3
ec2 = boto3.resource('ec2')

response = client.create_vpn_connection(
    DryRun=True,
    Type='ipsec.1',
    CustomerGatewayId='cgw-c16e87a8',
    VpnGatewayId='vgw-eca54d85',
    Options={
        'StaticRoutesOnly': True
    }
)