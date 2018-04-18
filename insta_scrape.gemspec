# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'insta_scrape/version'

Gem::Specification.new do |spec|
  spec.name          = "insta_scrape"
  spec.version       = InstaScrape::VERSION
  spec.authors       = ["dannyvassallo"]
  spec.email         = ["danielvassallo87@gmail.com"]

  spec.summary       = %q{Use Instagram Hashtag API in 2017}
  spec.description   = %q{The swiss army knife of instagram functionality. Restores all deprecated hashtag functionality from the instagram api without any of the authorization.}
  spec.homepage      = "https://github.com/dannyvassallo/insta_scrape"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "capybara", "~> 3.0", ">= 3.0"
  spec.add_development_dependency "phantomjs", "~> 2.1.1.0", ">= 2.1.1.0"
  spec.add_development_dependency "poltergeist", "~> 1.17.0", ">= 1.17.0"

  spec.add_runtime_dependency "capybara", "~> 3.0", ">= 3.0"
  spec.add_runtime_dependency "phantomjs", "~> 2.1.1.0", ">= 2.1.1.0"
  spec.add_runtime_dependency "poltergeist", "~> 1.17.0", ">= 1.17.0"

end
