class User
    attr_reader :name, :screen_name, :followers, :follows

    def initialize(name:, screen_name:, followers:, follows:)
        @name = name
        @screen_name = screen_name
        @followers = followers
        @follows = follows
    end
end
