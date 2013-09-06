# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pretty_csv/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["dinahmaghuyop"]
  gem.email         = ["dinahmaghuyop@gmail.com"]
  gem.description   = "A simple gem to help reading CSV files easier (and prettier!)."
  gem.summary       = "Reading CSV has never been this pretty!"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pretty_csv"
  gem.require_paths = ["lib"]
  gem.version       = PrettyCsv::VERSION
end
