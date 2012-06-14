# -*- encoding: utf-8 -*-
require File.expand_path('../lib/probability/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ariejan de Vroom"]
  gem.email         = ["ariejan@ariejan.net"]
  gem.description   = %q{A simple extension to ruby to use probability in your apps. Great for games and stuff.}
  gem.summary       = %q{Add probability to your app.}
  gem.homepage      = "https://github.com/ariejan/probability"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "probability"
  gem.require_paths = ["lib"]
  gem.version       = Probability::VERSION

  gem.add_development_dependency "rspec", "~> 2.10.0"
end
