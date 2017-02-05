require 'aws-sdk'

# User code that's executed when the instance starts
#script = ''

#encoded_script = Base64.encode64(script)

ec2 = Aws::EC2::Resource.new(region: 'us-east-1')

instance = ec2.create_instances({
  image_id: 'ami-8e1fece7',
  min_count: 1,
  max_count: 1,
  key_name: 'ctatro',
  security_group_ids: ['sg-5244023b'],
  #user_data: encoded_script,
  instance_type: 't1.micro',
  #placement: {
  #  availability_zone: 'us-east-1'
  #}
})

# Wait for the instance to be created, running, and passed status checks
ec2.client.wait_until(:instance_status_ok, {instance_ids: [instance[0].id]})

# Name the instance 'MyGroovyInstance' and give it the Group tag 'MyGroovyGroup'
instance.create_tags({ tags: [{ key: 'Name', value: 'MyGroovyInstance' }, { key: 'Group', value: 'MyGroovyGroup' }]})

puts instance.id
puts instance.public_ip_address