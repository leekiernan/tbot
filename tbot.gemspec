# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tbot/version'

Gem::Specification.new do |spec|
  spec.name          = "tbot"
  spec.version       = Tbot::VERSION
  spec.authors       = ["Lee Kiernan"]
  spec.email         = ["lee.kiernan@gmail.com"]
  spec.description   = %q{Slimline Twitter script for use in recurring search and responses.}
  spec.summary       = %q{Slimline Twitter script for use in recurring search and responses.}
  spec.homepage      = "http://www.leekiernan.co.uk/"
  spec.license       = "Whatever."

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency(%q<twitter>, [">=4.8.1"])
  spec.add_runtime_dependency(%q<oj>, ["~>2.1.4"])
  spec.add_runtime_dependency(%q<geocoder>, ["~>1.1.8"])

  # spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.7.3"
end
