# -*- encoding: utf-8 -*-

require File.expand_path("../lib/mechanize_rspec/version", __FILE__)

Gem::Specification.new do |gem|

  gem.name        = "mechanize_rspec"
  gem.version     = MechanizeRspec::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Michał Szyma"]
  gem.date        = "2012-03-05"
  gem.email       = ["raglub.ruby@gmail.com"]
  gem.summary     = %q{This gem should be used when you test Mechanize offline}
  gem.description = %q{This gem should be used when you test Mechanize offline}
  gem.homepage    = "http://github.com/raglub/mechanize_rspec"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_path  = "lib"

  gem.add_dependency "mechanize", ">= 2.1.1"
  gem.add_development_dependency "rspec", ">= 2.10.0"
end
