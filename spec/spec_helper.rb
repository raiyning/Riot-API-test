require 'json'
require 'httparty'
require_relative '../lib/parse_json'
require_relative '../lib/riot_services'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end

