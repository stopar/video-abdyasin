CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider             => 'Rackspace',
    :rackspace_username   => 'crashhog',
    :rackspace_api_key    => 'f9bb7f75305b3bb6797d35d491131fe7'    
  }
  config.fog_directory    = 'ustaz_assets'
  config.fog_host         = "http://c328429.r29.cf1.rackcdn.com"
end