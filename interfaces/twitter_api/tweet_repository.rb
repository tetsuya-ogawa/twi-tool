require './domain/tweet'
require './domain/user'

class TweetRepository
    def initialize(client:)
        @client = client
    end

    def search(q, result_type: nil)
        @client.search(q, result_type: result_type || "recent").map do |tw|
            p tw.text
            Tweet.new(text: tw.text, user: User.new(name: tw.user.name, screen_name: tw.user.screen_name))
        end
    end

    def find(id)

    end
end
