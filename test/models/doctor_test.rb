#####
# @author Mars
#####
require 'test_helper'
# make sure the doctor can be saved if all data is provided
class DoctorTest < ActiveSupport::TestCase
  test "doctor object can be not saved if no license is provided" do
  	doctor = Doctor.new
    assert_not doctor.save, "doctor object is saved without license"
  end

  test "doctor object can be saved to the database" do
  	doctor = doctors(:doctorone)
    assert doctor.save, "doctor object could not be saved even if it has all data"
  end
end