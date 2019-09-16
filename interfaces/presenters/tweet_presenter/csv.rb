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
                csv << [tweet.user.name, tweet.user.screen_name, tweet.text]
            end
        end
    end
end
