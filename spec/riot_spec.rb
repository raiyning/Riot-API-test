require 'spec_helper'

describe 'latest service riot api' do

  before(:all) do
    @api_key = ENV['RIOT_API_KEY']
    @api_calling = ParseJSON.new(HTTParty::get("https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/thefraction?api_key=#{@api_key}").body).json_data
    puts @api_calling
  end


  it 'should be a string' do
    expect(@api_calling.retrieve_name).to be_kind_of(String)
  end

  it 'The name of the player should be' do
    expect(@api_calling['name']).to eq('theFraction')
  end
end



