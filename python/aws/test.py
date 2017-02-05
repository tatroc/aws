# http://boto3.readthedocs.io/en/latest/guide/migrationec2.html#creating-the-connection


import boto3
ec2 = boto3.resource('ec2')

#securitygroup = boto3.resource('securitygroup')
sgs = ['sg-5244023b']

instances = ec2.instances.filter(
    Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
for instance in instances:
    print(instance.id, instance.instance_type)

ec2.create_instances(ImageId='ami-8e1fece7', MinCount=1, MaxCount=1, KeyName='ctatro', SecurityGroupIds=sgs)
