rem aws cloudformation deploy --template-file file://C:/Users/tatroc/Documents/aws/EC2_Instance_With_Ephemeral_Drives.json --stack-name my-new-stack --parameters file://C:/Users/tatroc/Documents/aws/startmyinstance-parameters.json

aws cloudformation deploy --region us-east-1 --template-file C:\\Users\\tatroc\\Documents\\aws\\EC2_Instance_With_Ephemeral_Drives.json --stack-name my-new-stack  --parameter-overrides KeyName=ctatro,InstanceType=t1.micro,SSHLocation=0.0.0.0/0
aws cloudformation describe-stack-events --region us-east-1 --stack-name my-new-stack


rem --parameter-overrides ParameterKey=KeyName,ParameterValue=ctatro ParameterKey=InstanceType,ParameterValue=t1.micro ParameterKey=SSHLocation,ParameterValue=0.0.0.0/0

pause