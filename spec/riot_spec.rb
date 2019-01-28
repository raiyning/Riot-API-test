require 'spec_helper'

describe 'latest service riot api' do

  before(:all) do
    @api_key = ENV['RIOT_API_KEY']
    @riot = RiotServices.new
    @riot.latest_service(@api_key)
    puts @riot.retrieve_name
  end

  it 'should be a string' do
    expect(riot.retrieve_name).to be_kind_of(String)
  end
end



