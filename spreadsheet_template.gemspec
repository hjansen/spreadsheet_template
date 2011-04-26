# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spreadsheet_template/version"

Gem::Specification.new do |s|
  s.name        = "spreadsheet_template"
  s.version     = SpreadsheetTemplate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig Knox"]
  s.email       = ["cknox@insiliflo.com"]
  s.homepage    = "http://rubygems.org/gems/spreadsheet_template"
  s.summary     = %q{Rails plugin to generate excel documents (xls) by using rxls templates.}
  s.description = %q{Based on Spreadsheet on Rails (by Koen Van der Auwera), Spreadsheet Template is designed to work with Rails 3.0 and above.}

  s.rubyforge_project = nil

  s.add_dependency('rails', '>= 3.0')
  s.add_dependency('ruby-ole', '>= 1.2.10.1')
  s.add_dependency('spreadsheet', '>= 0.6.4.1')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
