$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quizzes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quizzes"
  s.version     = Quizzes::VERSION
  s.authors     = ["Frederico Martins Porto"]
  s.email       = ["martinsporto@gmail.com"]
  s.homepage    = "https://github.com/fredmp/quizzes.git"
  s.summary     = "A simple quiz engine based on rails"
  s.description = "A quiz engine that you can extend and customize to build your own game"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.required_ruby_version = ">= 2.2.2"

  s.add_dependency "rails", "~> 6.0.0", ">= 6.0.0.1"

  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "shoulda-matchers", "~> 3.1"
  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "annotate", "~> 2.7"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "database_cleaner", "~> 1.5"
  s.add_development_dependency "factory_girl_rails", "~> 4.7"
end
