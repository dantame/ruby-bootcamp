# Load rubocop rake tasks to use in our Rakefile
begin 
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue LoadError
end

namespace :exercise10 do
  desc 'Automatically corrects linting issues using rubocop and reports outstanding issues'
  task :format_code => ['rubocop:auto_correct', 'rubocop'] do
    # `rubocop -a`
  end
end