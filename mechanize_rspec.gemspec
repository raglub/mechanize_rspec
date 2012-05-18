# -*- encoding: utf-8 -*-

require "mechanize_rspec/version"

Gem::Specification.new do |gem|

  gem.name        = "mechanize_rspec"
  gem.version     = MechanizeRspec::VERSIONi
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Michał Szyma"]
  gem.data        = "2012-03-05"
  gem.email       = ["raglub.ruby@gmail.com"]
  gem.summary     = %q{This gem should be used when you test Mechanize offline}
  gem.description = %q{This gem should be used when you test Mechanize offline}
  gem.homepage    = "http://github.com/raglub/mechanize_rspec"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_path  = "lib"

  gem.add_dependency "mechanize", ">= 2.1.1"

end
