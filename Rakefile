require 'cucumber/rake/task'


Cucumber::Rake::Task.new(:all, 'Runs the whole test Suite') do |t|
  	t.cucumber_opts = "features/*
             --format html --out=results/all-report.html
					   --format pretty --no-source"
end