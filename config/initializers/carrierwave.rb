CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      'AKIARZI6GO67JT7JEFEC',
    aws_secret_access_key:  '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'
  }
  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = 'clinsta-project'
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
