$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scerb/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scerb"
  s.version     = Scerb::VERSION
  s.authors     = ["Ian Fosbery"]
  s.email       = ["ian@codeguy.io"]
  s.homepage    = "https://github.com/fosberyi/scerb"
  s.summary     = "Template handler for using erb + scss to produce css"
  s.description = "This gem (plugin, whatever you wanna call it...) is for handling templates 
of the `.css.scerb` variety in your Rails application. Which is basically a
`.css.scss.erb` - compiling thusly: `erb` -> `scss` -> `css`. Yeah, that was
just so I could say 'thusly'."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "sass", "~> 3.0"

  s.add_development_dependency "rspec-rails", "~> 3.0"
  s.add_development_dependency "sqlite3"
end
