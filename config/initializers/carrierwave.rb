CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      ENV['AWSKEYID'],
    aws_secret_access_key:  ENV['AWSSAK']
  }
  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = 'clinsta-project'
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
