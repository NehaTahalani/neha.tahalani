require 'test_helper'

class AddressControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get address_create_url
    assert_response :success
  end

  test "should get destroy" do
    get address_destroy_url
    assert_response :success
  end

end
