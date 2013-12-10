
$:.unshift File.dirname(__FILE__) + 'lib'
require "bundler/gem_tasks"

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec


desc"Generar documentacion RDOC"
task :rdoc do
  sh "rdoc"
end

namespace :gemnasium do
  require 'gemnasium'

  desc "Push dependency files to gemnasium"
  task :push do
    Gemnasium.push project_path: File.expand_path(".")
  end

  desc "Create project on gemnasium"
  task :create do
    Gemnasium.create_project project_path: File.expand_path(".")
  end

  namespace :create do
    desc "Force project creation/update on gemnasium"
    task :force do
      Gemnasium.create_project project_path: File.expand_path("."), overwrite_attr: true
    end
  end
end