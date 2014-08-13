# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'silverline/constants'

Gem::Specification.new do |spec|
  spec.name          = "silverline"
  spec.version       = Silverline::VERSION
  spec.authors       = ["Matt Meng"]
  spec.email         = ["mengmatt@gmail.com"]
  spec.summary       = %q{A Ruby Gem for creating simple web-based GUI's using Sinatra, Riot.js and Bootstrap.}
  spec.description   = %q{A Ruby Gem for creating simple web-based GUI's using Sinatra, Riot.js and Bootstrap.}
  spec.homepage      = "https://github.com/mattmeng/silverline"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "launchy", "~> 2.4"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
