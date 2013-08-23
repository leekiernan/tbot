module Tbot
  class Bot
    module Config
      API_CREDENTIALS = {
        :consumer_key => "RfcKdksf0n09MxvG0VdEA",
        :consumer_secret => "HtNwBorPBkLSOmpUvKv3rLxJzhHjRXLl3Eac0va548",
        :oauth_token => "70001362-fM513VTyTR4yt6wHzc72e5LzzEdEucExsFgCmFuIo",
        :oauth_token_secret => "TumMI6gwKTkFiTUoWXUfYar3KnU1yzZLUb727uU"
      }

      @@client = nil

      def self.client=(client)
        @@client = Twitter::Client.new (!!client ? client : API_CREDENTIALS)
      end

      def self.client
        @@client
      end

      # Instance methods.
      def initialize
        raise NoClientError unless @@client
        @last_id = nil

        @@client
      end

    end
  end
end