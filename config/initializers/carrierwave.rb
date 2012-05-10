CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider             => 'Rackspace',
    :rackspace_username   => '[Username]',
    :rackspace_api_key    => '[API key]'    
  }
  config.fog_directory    = '[Cloud directory]'
  config.fog_host         = "[Your host]"
end