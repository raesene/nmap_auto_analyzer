# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmap_auto_analyzer/version'

Gem::Specification.new do |spec|
  spec.name          = "nmap_auto_analyzer"
  spec.version       = NmapAutoAnalyzer::VERSION
  spec.authors       = ["Rory McCune"]
  spec.email         = ["rorym@mccune.org.uk"]
  spec.summary       = %q{A Gem which provides a script and class to analyse nmap files}
  spec.description   = %q{This is a gem which is used to analyze output from the nmap port scanner (http://www.nmap.org). The goal is to provide fast initial analysis where there is a large amount of data to parse.}
  spec.homepage      = ""
  spec.license       = "GPL-3.0+"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "nmap-parser"
  spec.add_dependency "rubyXL"
end
