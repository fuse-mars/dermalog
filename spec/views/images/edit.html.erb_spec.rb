require 'spec_helper'

describe "images/edit" do
  before(:each) do
    case_log = FactoryGirl.create(:case_log, id: 1)
    @image = assign(:image, Image.create({
      :url => "MyString",
      :title => "MyString",
      :description => "MyString",
      :case_log => case_log
    }))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", image_path(@image), "post" do
      assert_select "input#image_url[name=?]", "image[url]"
      assert_select "input#image_title[name=?]", "image[title]"
      assert_select "textarea#image_description[name=?]", "image[description]"
    end
  end
end
