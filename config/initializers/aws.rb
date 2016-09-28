require 'aws-sdk'


Aws.config.update({
  region: ENV['AWS_REGION'],
  access_key_id: ENV['AWS_ACCESS_KEY_ID'], 
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  
})