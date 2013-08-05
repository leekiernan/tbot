# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tbot/version'

Gem::Specification.new do |spec|
  spec.name          = "tbot"
  spec.version       = Tbot::VERSION
  spec.authors       = ["Lee Kiernan"]
  spec.email         = ["lee.kiernan@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = "http://www.leekiernan.co.uk/"
  spec.license       = "Whatever."

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  s.add_runtime_dependency(%q<twitter>, [">=4.8.1"])
  # spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.7.3"
end
