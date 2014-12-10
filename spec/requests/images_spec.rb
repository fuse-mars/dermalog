require 'spec_helper'

describe "Images", :type => :request do
  before :each do
    @user = FactoryGirl.build(:doctor, admin: true)
    ImagesController.any_instance.stub(:current_user).and_return @user
  end

  describe "GET /images" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get images_path
      response.status.should be(200)
    end
  end
end
