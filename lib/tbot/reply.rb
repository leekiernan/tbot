module Tbot
  module Reply
    def reply(tweet, response = "")
      screen_name = tweet.user.screen_name

      if block_given?
        # pass user to block.  tweet already present to call reply.
        # force string response.
        # logic will be handled within this block.
        @@client.update "@#{screen_name} #{yield(tweet.user).to_s}", { :in_reply_to_status_id => tweet.id }
      else
        @@client.update "@#{screen_name} #{response}", { :in_reply_to_status_id => tweet.id }
      end
    end
  end
end
