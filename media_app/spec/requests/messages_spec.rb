require 'rails_helper'
require 'json'

RSpec.describe "Messages", type: :request do
  describe "GET /messages/retrieve" do    

    it "returns JSON format" do
      get '/messages/retrieve'
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end
    
  end
end
