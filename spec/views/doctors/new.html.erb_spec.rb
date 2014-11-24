require 'spec_helper'

describe "doctors/new" do
  before(:each) do
    assign(:doctor, Doctor.create({
      :license => "MyString",
      :name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :state => "MyString",
      :admin => false
    }))
  end

  it "renders new doctor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", doctors_path, "post" do
      assert_select "input#doctor_license[name=?]", "doctor[license]"
      assert_select "input#doctor_name[name=?]", "doctor[name]"
      assert_select "input#doctor_email[name=?]", "doctor[email]"
      assert_select "input#doctor_password[name=?]", "doctor[password]"
      assert_select "input#doctor_state[name=?]", "doctor[state]"
    end
  end
end
