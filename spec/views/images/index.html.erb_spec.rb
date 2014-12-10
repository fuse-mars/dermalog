require 'spec_helper'

describe "images/index" do
  before(:each) do
    case_log = FactoryGirl.create(:case_log, id: 1)
    assign(:images, [
      Image.create({
        :url => "Url",
        :title => "Title",
        :description => "Description",
        :case_log => case_log
      }),
      Image.create({
        :url => "Url",
        :title => "Title",
        :description => "Description",
        :case_log => case_log
      })
    ])
  end

  it "renders a list of images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td img", "[url=?]" => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
