require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc "Run rspec with code coverage"
task :coverage do
  `rake spec COVERAGE=true`
end

task :default  => :spec
