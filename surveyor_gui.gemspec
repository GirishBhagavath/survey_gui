$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "surveyor_gui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "surveyor_gui"
  s.version     = SurveyorGui::VERSION
  s.authors     = ["Kevin Jay"]
  s.email       = ["kjayma@gmail.com"]
  s.homepage    =  %q{http://github.com/kjayma/surveyor_gui}
  s.post_install_message = %q{Thanks for installing surveyor_gui! The time has come to run the surveyor_gui generator and migrate your database, even if you are upgrading.}
  s.summary     = "A Rails gem to supply a front-end and reporting capability to the Surveyor gem."

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.files = `git ls-files`.split("\n") - ['irb']
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails', '>= 3.2'
  s.add_dependency 'dynamic_form'
  #s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'jquery-ui-sass-rails'

  s.add_development_dependency "sqlite3"

  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'uglifier'
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('capybara')
  s.add_development_dependency('launchy',)
  s.add_development_dependency('poltergeist')
  s.add_development_dependency('capybara-webkit')
  s.add_development_dependency('json_spec')
  s.add_development_dependency('factory_girl')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('rspec-retry')

  s.add_dependency 'surveyor', '~> 1.4.0'
  s.add_dependency 'will_paginate'

  s.add_dependency 'simple_form'
  s.add_dependency 'carrierwave'
  s.add_dependency 'colorbox-rails'
  s.add_dependency 'jquery-form-rails'
  s.add_dependency 'deep_cloneable'
  s.add_dependency 'lazy_high_charts'
end
