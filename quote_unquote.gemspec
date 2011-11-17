# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "quote_unquote/version"

Gem::Specification.new do |s|
  s.name        = "quote_unquote"
  s.version     = QuoteUnquote::VERSION
  s.authors     = ["Junegunn Choi"]
  s.email       = ["junegunn.c@gmail.com"]
  s.homepage    = "http://github.com/junegunn/quote_unquote"
  s.summary     = %q{Wraps and unwraps strings with quotes}
  s.description = %q{Wraps and unwraps strings with quotes}

  s.rubyforge_project = "quote_unquote"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
