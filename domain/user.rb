class User
    attr_reader :name, :screen_name

    def initialize(name:, screen_name:)
        @name = name
        @screen_name = screen_name
    end
end
