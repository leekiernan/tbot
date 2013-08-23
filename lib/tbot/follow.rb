module Tbot
  # module Follow
  class Tbot
    def follow(user)
      @@client.follow user.id
    end
  end
  # end
end
