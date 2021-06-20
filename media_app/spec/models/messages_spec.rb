require 'rails_helper'

RSpec.describe "Messages", type: :model do

    it "checks that the message can be created" do

        # Setup & Excercise
        @message = Message.create(title: "Sermon Message", description: "This is the description", tag: "Philippians")

        # Verification
        expect(@message).to be_valid

        #Teardown
        @message.destroy
        
    end

    it "checks that the message can be updated" do

        #Setup
        @message = Message.create(title: "Sermon Message", description: "This is the description", tag: "Philippians")

        # Exercise
        @message.update(:title => "Different Sermon Message")

        # Verification
        expect(Message.find_by_title("Different Sermon Message")).to eq(@message)

        #Teardown
        @message.destroy

    end

    it "checks that the message can be destroyed" do

        #Setup
        @message = Message.create(title: "Sermon Message", description: "This is the description", tag: "Philippians")

        #Excercise
        @message.destroy

        #Verification
        expect(Message.find_by(title: 'Sermon Message')).to be_nil

    end


end
