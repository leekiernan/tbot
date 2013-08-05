require "tbot/version"

module Tbot
  TWITTER_BASE = ""

  @@api_key = nil
  # Your code goes here...
  #

  def self.api_key=(api_key)
    @@api_key = api_key
  end

  def self.api_key
    @@api_key
  end
end

