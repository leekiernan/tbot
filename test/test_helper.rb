require 'yaml'

require 'tbot'
require 'minitest/unit'
require 'minitest/mock'
require 'minitest/autorun'
require 'minitest/pride'

class Hash
  def method_missing(method, *opts)
    m = method.to_s
    if self.has_key?(m)
      return self[m]
    elsif self.has_key?(m.to_sym)
      return self[m.to_sym]
    end
    super
  end
end