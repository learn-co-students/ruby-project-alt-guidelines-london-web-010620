require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

# Set up logging for our ActiveRecord database connection. This means that whenever we call an ActiveRecord method that interacts with our database, it will output the resulting SQL to the terminal. To turn this off, simply change this line to ActiveRecord::Base.logger = nil
# ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'lib'
