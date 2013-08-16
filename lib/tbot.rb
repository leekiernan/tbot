require "tbot/version"

module Tbot
  TWITTER_BASE = ""
  API_CREDENTIALS = nil

  @@api_key = nil
  # Your code goes here...
  #

  require 'tbot/config'
  require 'tbot/follow'
  require 'tbot/search'
  require 'tbot/reply'

  require 'tbot/bot'
end

