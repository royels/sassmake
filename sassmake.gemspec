# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sassmake/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rohan"]
  gem.email         = ["docmentz@gmail.com"]
  gem.description   = %q{Sass generator CLI utility.}
  gem.summary       = %q{Use this tool to generate folder and file structure á la Sass Guidelines.}
  gem.homepage      = "http://royels.me"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["sassmake"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sassmake"
  gem.require_paths = ["lib"]
  gem.version       = Sassmake::VERSION
  gem.add_dependency 'thor'
end
