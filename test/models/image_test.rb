#####
# @author Mars
#####
require 'test_helper'
 
class ImageTest < ActiveSupport::TestCase
  test "should not save image without an image url" do
  	image = Image.new
    assert_not image.save, "Saved image without url"
  end
end