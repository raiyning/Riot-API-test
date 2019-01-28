require 'json'
require_relative 'parse_json'
require 'httparty'

class RiotServices
  attr_accessor :latest_riot_data

  def latest_services (api_key)
    @latest_riot_data = ParseJson.new(HTTParty::get("https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/thefraction?api_key=#{api_key}").body).json_data
  end

  def retrieve_name
    @latest_riot_data["name"]
  end

  def retrieve_level
    @latest_riot_data["summonerLevel"]
  end

end

riot = RiotServices.new
riot.latest_services(RGAPI-389f499b-c80c-4d90-918d-8896bb552eb5)

puts riot.retrieve_name