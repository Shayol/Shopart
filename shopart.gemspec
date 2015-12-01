$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shopart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shopart"
  s.version     = Shopart::VERSION
  s.authors     = ["Shayol"]
  s.email       = ["thesadstorm@yandex.ua"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Shopping cart == Shopart."
  s.description = "TODO: Engine for cart and checkout."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]
  
  s.add_dependency "rails", "~> 4.2.2"
  s.add_dependency "aasm"
  s.add_dependency "wicked"
  s.add_dependency "country_select"

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "devise"
  #s.add_development_dependency "codeclimate-test-reporter"
  s.add_development_dependency "capybara"
end
