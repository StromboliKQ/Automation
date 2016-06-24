require 'cucumber'
require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:features) do |t|
 # t.profile = ‘ci’
  t.cucumber_opts = "features/*
              --format pretty --no-source
              --format json -o cucumber.json"
end

task :default => :features


# --format html --out=results/all-report.html

Knapsack.load_tasks if defined?(Knapsack)
