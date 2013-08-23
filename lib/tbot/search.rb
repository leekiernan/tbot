module Tbot
  # module Search
  class Bot
    # Clean up options, pass to Twitter search function and yield results for block handling.
    def search(q, opts = {})
      format_opts opts

      results = @@client.search q, opts

      yield results if block_given?

      results
    end

    # Works as search but sets up a thread and calls itself infinitely.  Minimum delay between searches 60 seconds.
    def recurring_search(q, opts = {})
      format_opts opts

      # Returns current recurring search, or creates a new one.
      # This should force a single recurring search per instance.
      # Client held in class method so new instance created per loop...
      @thread ||= Thread.new do
        @last_id = nil

        while true do
          results = self.search q, opts.merge({ :since_id => @last_id })

          @last_id = results.max_id

          yield results if block_given?

          sleep @delay
        end
      end
    end

    # => kill thread loop if it exists.
    def stop_search!
      false unless !!@thread

      @thread.exit
      @thread = nil
    end
  end
  # end
end
