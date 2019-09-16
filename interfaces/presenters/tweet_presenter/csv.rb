require "csv"

class Csv
    def initialize(tweets:)
        @tweets = tweets
    end

    def data
        @data = gen_csv
    end

    private

    def gen_csv
        CSV.open('output.csv','w') do |csv|
            @tweets.each do |tweet|
                csv << ['ユーザー名', 'ユーザーID', 'フォローワー数', 'フォロー数', 'ツイート内容']
                csv << [tweet.user.name, tweet.user.screen_name, tweet.user.followers, tweet.user.follows, tweet.text]
            end
        end
    end
end
