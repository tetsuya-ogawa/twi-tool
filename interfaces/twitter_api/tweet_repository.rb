require './domain/tweet'
require './domain/user'

class TweetRepository
    def initialize(client:)
        @client = client
    end

    def search(q, result_type: nil, count: 100, slice_id: 0)
        @client.search(q, result_type: result_type || "recent", count: count, slice_id: slice_id).map do |tw|
            tw_user = tw.user
            user = User.new(name: tw_user.name, screen_name: tw_user.screen_name, followers: tw_user.followers_count, follows: tw_user.friends_count) 
            Tweet.new(text: tw.text, user: user)
        end
    end

    def find(id)

    end
end
