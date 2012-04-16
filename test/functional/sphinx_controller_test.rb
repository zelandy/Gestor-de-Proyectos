require 'test_helper'

class SphinxControllerTest < ActionController::TestCase
  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
