require "test_helper"

class BeersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get beers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get beers_destroy_url
    assert_response :success
  end
end
