# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/rail/in/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-rail-in"
  spec.version       = Rails::Rail::In::VERSION
  spec.authors       = ["psaravanan11"]
  spec.email         = ["psaravanan11@gmail.com"]
  spec.summary       = %q{Indian Railways Trains, PNR Status}
  spec.description   = %q{Indian Railways Trains, Rail, IRCTC Reservation, IRCTC Availability, PNR Status, Running Status, Map, Arrival Departure, Route, Fare Check}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
