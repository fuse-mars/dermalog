#####
# @author Mars
#####
require 'test_helper'
 
class CaseLogTest < ActiveSupport::TestCase
  test "should not save case log without a title" do
  	case_log = CaseLog.new
    assert_not case_log.save, "Saved the case log without title"
  end
end