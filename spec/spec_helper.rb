require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'active_support'
require 'action_dispatch'
require "mocha"
require "unicorn_use_special_port"


RSpec.configure do |config|
  config.mock_with :mocha
end

