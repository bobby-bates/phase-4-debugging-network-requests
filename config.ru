# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
require 'pry'
require 'awesome_print'

run Rails.application
Rails.application.load_server
