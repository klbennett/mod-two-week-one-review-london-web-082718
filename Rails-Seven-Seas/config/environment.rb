
# Load the Rails application.
require_relative 'application'

ActiveRecord::Base.logger = Logger.new(STDOUT)

# Initialize the Rails application.
Rails.application.initialize!
