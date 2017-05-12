Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV["twitter_consumer_key"], ENV["twitter_consumer_secret"]
  {
    :authorize_params => {
      :force_login => 'true',
      :use_authorize => 'true'
    }
  }
  provider :linkedin, ENV['linkedin_client_id'], ENV['linkedin_secret'], secure_image_url: true
end


# https://www.googleapis.com/youtube/v3/channels?part=id&mine=true
