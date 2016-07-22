require 'sinatra/activerecord/rake'
require 'rake'
require 'rake/testtask'

task :default => [:test]

namespace :db do
  task :load_config do
    require 'sinatra/activerecord'
  end
end

task :test => ['db:migrate']

Rake::TestTask.new do |t|
  t.libs = [ 'lib', 'config' ]
  t.pattern = 'test/**/*_spec.rb'
  t.options = '--profile'
end
