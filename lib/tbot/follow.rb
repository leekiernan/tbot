module Tbot
  module Follow
    def follow(user)
      @@client.follow user.id
    end
  end
end
