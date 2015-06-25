# Create a RSpec rake task to run the tests with supplied options
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = '--color --format doc'
  end
rescue LoadError
end

namespace :exercise10 do
  desc 'Runs all unit tests using rspec'
  task :run_tests => [:spec] do
    # `rspec`
  end
end