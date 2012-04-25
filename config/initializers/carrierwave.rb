CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider             => '[Cloud storage provider; Rackspace or Amazon S3]',
    :rackspace_username   => '[Your username]',
    :rackspace_api_key    => '[Your API key]'    
  }
  config.fog_directory    = 'ustaz_videos'
  config.fog_host         = "[Address of the host]"
end