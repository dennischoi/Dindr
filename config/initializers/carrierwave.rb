CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["S3_KEY"],                        # required
    :aws_secret_access_key  => ENV["S3_SECRET"],                        # required
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east
  }
  config.fog_directory  = 'dindrteamveg'                     # required
  config.fog_public     = true                                   # optional, defaults to true
end
