require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'yaml'
require 'selenium-webdriver'
require 'ostruct'
require './alter_struct'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features
