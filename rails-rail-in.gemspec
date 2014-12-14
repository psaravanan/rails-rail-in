lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rails-rail-in"
  spec.version       = "0.0.4"
  spec.date          = "2014-12-14"
  spec.authors       = ["psaravanan11"]
  spec.email         = ["psaravanan11@gmail.com"]
  spec.summary       = %q{Indian Railways Trains, PNR Status}
  spec.description   = %q{Indian Railways Trains, PNR Status, Features to come IRCTC Availability, Running Status, Map, Arrival Departure, Route, Fare Check...}
  spec.homepage      = "https://github.com/psaravanan/rails-rail-in"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.metadata = { "issue_tracker" => "http://www.psaravanan.in" }
  spec.post_install_message = "Thanks for installing!"
  spec.requirements << 'rest_client, ~> 1.6'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rest_client", "~> 1.6"

  spec.add_runtime_dependency "rest_client", "~> 1.6"
end
