# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'token_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "token_generator"
  spec.version       = TokenGenerator::VERSION
  spec.authors       = ["Ian White"]
  spec.email         = ["ian.w.white@gmail.com"]
  spec.summary       = %q{Generate a token}
  spec.description   = %q{Generates friendly (to urls and humans) tokens}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
