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


Twitter::SavedSearches.saved_search_create(q, {})

SavedSearches give refresh URL.
res.refresh_url
 => {:since_id=>"369135341543763969", :q=>"bieber", :geocode=>"51.561065,-1.779442,15mi", :include_entities=>"1"}
-> client.search res.refresh_url[:q], res.refresh_url
^^^ Store this. res.refresh_url



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
