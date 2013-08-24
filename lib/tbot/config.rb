module Tbot
  # module Config
  class Bot
    API_CREDENTIALS = {
      :consumer_key => "",
      :consumer_secret => "",
      :oauth_token => "",
      :oauth_token_secret => ""
    }

    def self.client=(client)
      @@client = Twitter::Client.new (!!client ? client : API_CREDENTIALS)
    end

    def self.client
      @@client
    end

  end
  # end
end