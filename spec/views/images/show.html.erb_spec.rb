require 'spec_helper'

describe "images/show" do
  before(:each) do
    case_log = FactoryGirl.create(:case_log, id: 1)
    @image = assign(:image, Image.create({
      :url => "Url",
      :title => "Title",
      :description => "Description",
      :case_log => case_log
    }))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(@image.case_log.title)
  end
end
