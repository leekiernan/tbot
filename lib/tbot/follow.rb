module Tbot
  class Bot
    def follow(user)
      @@client.follow user.id
    end
  end
end
