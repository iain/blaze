# -*- encoding: utf-8 -*-
require File.expand_path('../lib/blaze/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["iain"]
  gem.email         = ["iain@iain.nl"]
  gem.description   = %q{Very simple Campfire notification gem}
  gem.summary       = %q{Very simple Campfire notification gem}
  gem.homepage      = "https://github.com/iain/blaze"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "blaze"
  gem.require_paths = ["lib"]
  gem.version       = Blaze::VERSION

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'

end
