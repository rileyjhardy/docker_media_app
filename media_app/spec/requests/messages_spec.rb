require 'rails_helper'
require 'json'

RSpec.describe "Messages", type: :request do
  describe "GET /messages/retrieve" do

    
    

    it "returns JSON format" do
      get '/messages/retrieve'
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end    

    it "returns message with the provided key" do

      get '/messages/retrieve?tag=Till'
      json = JSON.parse(response.body)
      expect(json).to include('tag')
      
    end
    
  end
end
