require 'rails_helper'

RSpec.describe "Messages", type: :model do

    it "checks that the message can be created" do

        @message = Message.create(title: "Stars", description: "Best song by Switchfoot", tag: "Hits")

        expect(@message).to be_valid
    end

    it "checks that the message can be updated" do

        @message = Message.create(title: "Stars", description: "Best song by Switchfoot", tag: "Hits")

        @message.update(:title => "Let that be Enough")

        expect(Message.find_by_title("Let that be Enough")).to eq(@message)

    end

    it "checks that the message can be destroyed" do

        @message = Message.create(title: "Stars", description: "Best song by Switchfoot", tag: "Hits")

        @message.destroy

        expect(Message.find_by(title: 'Let that be Enough')).to be_nil

    end


end
