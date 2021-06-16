require 'rails_helper'

RSpec.describe "Messages", type: :model do

    before(:all) do

        @message = Message.create(title: "Stars", description: "Best song by Switchfoot", tag: "Hits")

    end

    it "checks that the message can be created" do
        expect(@message).to be_valid
    end

    it "checks that the message can be updated" do
        @message.update(:title => "Let that be Enough")
        expect(Message.find_by_title("Let that be Enough")).to eq(@message)
    end

    it "checks that the message can be destroyed" do
        @message.destroy
        expect(Message.find_by(title: 'Let that be Enough')).to be_nil
    end


end
