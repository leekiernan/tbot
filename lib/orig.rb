=begin
  require 'twitter'

  require "tbot/version"

  require 'tbot/config'
  require 'tbot/follow'
  require 'tbot/search'
  require 'tbot/reply'

  require 'tbot/bot'

  module Tbot
    TWITTER_BASE = ""
    API_CREDENTIALS = {
      :consumer_key => "RfcKdksf0n09MxvG0VdEA",
      :consumer_secret => "HtNwBorPBkLSOmpUvKv3rLxJzhHjRXLl3Eac0va548",
      :oauth_token => "70001362-fM513VTyTR4yt6wHzc72e5LzzEdEucExsFgCmFuIo",
      :oauth_token_secret => "TumMI6gwKTkFiTUoWXUfYar3KnU1yzZLUb727uU"
    }

    @@Last_id = nil

    class << self
      @client = nil

      def client(args)
        @client ||= Twitter::Client.new (!!args) ? args : API_CREDENTIALS
      end

      def config
      end

      def load_config( param )
      end

    end

    module Search
      # Parse search params
      def load_searches
      end

      def find_search
      end

      def sleep_loop(delay)
        delay = 50

        client.saved_searches.each do |search|
          t = Thread.new do
            since_id = nil

            while true do
            # EACH SEARCH?

            res = client.search search.query, {}

            since_id = res.refresh_url[:since_id]

            sleep delay
          end
        end
      end

    end

    def recurring_search(delay, &block)
      t = Thread.new do
        while true do
            # perform_search()
            sleep delay
          end
        end
      end

      def search(arg)
        findings = @client.search arg, since_id: @@last_id

        case findings
        when ""
        when ""
        end

      end
    end

    module Reply
      def load_replies
      end

      def reply_to_find
        replies = reply_for_find
        reply replies.sample
      end

      def reply_for_find
      end

      def reply
      end
    end

    module Follow
    end

    module Process
      # How do i do this?

      # if tweet contains location OR tweeter has location THEN
      # model.find_by_location -> get id, convert to URL -> shorten -> reply.
      # http://url.to/results_by_area/yours
    end


  end

=end