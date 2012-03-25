require 'test_helper'

class RecordControllerTest < ActionController::TestCase
  test "should get getRecord" do
    get :getRecord
    assert_response :success
  end

end
