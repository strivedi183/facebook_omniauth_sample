Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_BEWD_KEY'], ENV['FACEBOOK_BEWD_SECRET'], scope: 'public_profile,read_stream'
end
