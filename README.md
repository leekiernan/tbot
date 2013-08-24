# Tbot

## Installation

Add this line to your application's Gemfile:

    gem 'tbot'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tbot


## === TODO ===
## Usage

Fairly thin layer for adding search and recursive search functionality to Twitter's API.

require 'tbot'
API_CREDENTIALS = {
  :consumer_key => "RfcKdksf0n09MxvG0VdEA",
  :consumer_secret => "HtNwBorPBkLSOmpUvKv3rLxJzhHjRXLl3Eac0va548",
  :oauth_token => "70001362-fM513VTyTR4yt6wHzc72e5LzzEdEucExsFgCmFuIo",
  :oauth_token_secret => "TumMI6gwKTkFiTUoWXUfYar3KnU1yzZLUb727uU"
}

Tbot::Bot.client = API_CREDENTIALS

a = Tbot::Bot.new
b = Tbot::Bot.new
c = Tbot::Bot.new

a.recurring_search "bieber", { :delay => 20 } do |results|
  results.statuses.each do |tw|
    p "A::: #{tw.text}"
    if rand(500) % 4 > 2
      puts "HIT::: #{Test.get_stuff}"
    end
    sleep rand(5)
  end
end

b.recurring_search "love", { :delay => 20 } do |results|
  results.statuses.each do |tw|
    p "B::: #{tw.text}"
    sleep rand(5)
  end
end

c.recurring_search "swindon", { :delay => 20 } do |results|
  results.statuses.each do |tw|
    p "C::: #{tw.text}"
    sleep rand(5)
  end
end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
