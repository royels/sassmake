# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sassmake/version', __FILE__)

Gem::Specification.new do |gem|  
  gem.authors       = ["Rohan"]
  gem.email         = ["docmentz@gmail.com"]
  gem.description   = %q{When a problem comes along..You must sassmake it}
  gem.summary       = %q{Now sassmake it..Into shape}
  gem.homepage      = "http://royels.me"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["sassmake"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sassmake"
  gem.require_paths = ["lib"]
  gem.version       = Sassmake::VERSION
end  
