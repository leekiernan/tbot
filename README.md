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

This gem allows you to specify request and response data for Twitter.

Pass in a hash or yaml file of what should be searched for, and how to handle the response.

If reply is required, you can add custom model callbacks which allow you to specify your own methods for retreiving relevant URLS

Twitter::SavedSearches.saved_search_create(q, {})

SavedSearches give refresh URL.
res.refresh_url
 => {:since_id=>"369135341543763969", :q=>"bieber", :geocode=>"51.561065,-1.779442,15mi", :include_entities=>"1"}
-> client.search res.refresh_url[:q], res.refresh_url
^^^ Store this. res.refresh_url

INIT SOMETHING LIKE THIS
term:
  location:
    - sn2
    - Swindon
    - geocode
  replies:
    - one
    - two
  add_url: Model.function
  callback: Model.function



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
