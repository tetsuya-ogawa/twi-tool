require 'twitter'

class TwitterApiClient
    def initialize(consumer_key:, consumer_secret:, access_token:, access_token_secret:)
        @client = Twitter::REST::Client.new do |config|
            config.consumer_key        = consumer_key
            config.consumer_secret     = consumer_secret
            config.access_token        = access_token
            config.access_token_secret = access_token_secret
        end
    end
end
