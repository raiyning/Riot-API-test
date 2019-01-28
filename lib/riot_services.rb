require 'json'
require_relative 'parse_json'
require 'httparty'

class RiotServices
  attr_accessor :latest_riot_data

  def latest_services (api_key)
    @latest_riot_data = ParseJson.new(HTTParty::get("https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/thefraction?api_key=#{api_key}"))
  end

  def retrieve_name
    @latest_riot_data["name"]
  end

  def retrieve_level
    @latest_riot_data["summonerLevel"]
  end

end

