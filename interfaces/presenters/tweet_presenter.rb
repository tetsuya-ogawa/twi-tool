require './interfaces/presenters/tweet_presenter/csv'

class TweetPresenter
    def initialize(tweets:, kind:)
        @kind = kind
        @tweets = tweets
        @objuct = dependency_injection
    end

    def data
        @objuct.data
    end

    private

    def dependency_injection
        kind = @kind.to_s
        Object.const_get("TweetPresenter::#{kind.capitalize}").new(tweets: @tweets)
    end
end