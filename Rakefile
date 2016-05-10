require "rdoc/task"

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "Scerb"
  rdoc.options << "--line-numbers"
  rdoc.rdoc_files.include("README.rdoc")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

require "bundler/setup"
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
  t.ruby_opts = %w[-w]
  t.verbose = false
end

desc "Default: run the rspec examples"
task default: :spec
