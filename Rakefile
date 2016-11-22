require 'cucumber'
require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:features) do |t|
 # t.profile = ‘ci’
  t.cucumber_opts = "features/*
  --format pretty
  --no-source
  --format json
  -o cucumber.json
  --guess"
end

Cucumber::Rake::Task.new(:quick) do |t|
 # t.profile = ‘ci’
  t.cucumber_opts = "features/tests/quicktest.feature
  --format pretty
  --no-source
  --format json
  -o cucumber.json
  --guess"
end

Cucumber::Rake::Task.new(:files) do |t|
 # t.profile = ‘ci’
  t.cucumber_opts = "features/tests/quicktest.feature
  --format pretty
  --no-source
  --format json
  -o cucumber.json
  --guess"
end

Cucumber::Rake::Task.new(:post) do |t|
 # t.profile = ‘ci’
  t.cucumber_opts = "
  --format pretty
  --no-source
  --format json
  -o cucumber.json
  --guess
  --tags @post"
end

task :default => :features
#task :default => :quick
#task :default => :files
#task :default => :post

# --format html --out=results/all-report.html

Knapsack.load_tasks if defined?(Knapsack)
