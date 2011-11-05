# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "binman/version"
require "binman/gemspec"

Gem::Specification.new do |s|
  s.name        = "binman"
  s.version     = BinMan::VERSION
  s.authors,
  s.email       = File.read('LICENSE').scan(/Copyright \d+ (.+) <(.+?)>/).transpose
  s.homepage    = "http://github.com/sunaku/binman"
  s.summary     = "UNIX man pages for Ruby bin/ scripts"
  s.description = nil

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_development_dependency "redcarpet-manpage", ">= 0.0.1"
end
