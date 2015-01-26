# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "busser/mussel/version"
require "English"

Gem::Specification.new do |gem|
  gem.name          = "busser-mussel"
  gem.version       = Busser::Mussel::VERSION
  gem.authors       = ["Edward Middleton"]
  gem.email         = ["edward.middleton@vortorus.net"]
  gem.description   = "A Busser runner plugin for Wakame VDC mussel"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/emiddleton/busser-mussel"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = []
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "busser"
end
