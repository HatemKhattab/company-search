require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase

  def setup
    @conmpany = companies(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end