module Tbot
  class Bot
    @@client = nil

    # DRY: Ensure correct data is passed to search, set instance variables as required.
    def format_opts(opts)
      if opts[:delay]
        @delay = opts.delete(:delay)
        @delay = (@delay < 60) ? 60 : @delay
      end

      if !!opts[:location]
        geo = Geocoder.search(opts.delete(:location)).first.geometry['location'].values.join(',')
        radius = opts.delete(:radius) || 15
        opts[:geocode] = "#{geo},#{radius}mi"
      end
    end

    # Instance methods.
    def initialize
      raise NoClientError unless @@client
      @last_id = nil

      @@client
    end

  end
end