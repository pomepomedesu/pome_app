require 'test_helper'

class PomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pomes_index_url
    assert_response :success
  end

end
