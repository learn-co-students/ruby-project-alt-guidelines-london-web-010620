require_relative 'config/environment'
require 'sinatra/activerecord/rake'
# require_relative 'lib/models/app/tree.rb'
# require_relative 'lib/models/app/forest.rb'
# require_relative 'lib/models/app/placement.rb'
# require_relative 'lib/models/app/seeds.rb'
# use require_all 'lib' ya bozo





desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end
