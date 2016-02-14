require 'pusher'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Pusher.app_id = '151801'
Pusher.key = '446412644b608e9db0ec'
Pusher.secret = 'e2a6cf311b4bbe9e69df'