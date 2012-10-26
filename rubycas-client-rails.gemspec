$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rubycas-client-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rubycas-client-rails"
  s.date        = %q{2012-10-24}
  s.version     = RubyCAS::Client::Rails::VERSION
  s.authors     = ["Robert Mitwicki"]
  s.email       = ["robert.mitwicki@opensoftware.pl"]
  s.homepage    = "https://github.com/mitfik/rubycas-client-rails"
  s.summary     = "Rails plugin for rubycas-client"
  s.description = "Rails plugin for using the RubyCAS-Client as a controller filter."
  s.rubyforge_project = %q{rubycas-client-rails}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency("rails", ">= 3.0.0")
  s.add_dependency('rubycas-client', '~> 3.0.3')
  s.add_development_dependency "sqlite3"
end
