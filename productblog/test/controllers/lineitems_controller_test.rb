require 'test_helper'

class LineitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lineitem = lineitems(:one)
  end

  test "should get index" do
    get lineitems_url
    assert_response :success
  end

  test "should get new" do
    get new_lineitem_url
    assert_response :success
  end

  test "should create lineitem" do
    assert_difference('Lineitem.count') do
      post lineitems_url, params: { lineitem: { description: @lineitem.description, order_id: @lineitem.order_id, price: @lineitem.price, product_id: @lineitem.product_id, quantity: @lineitem.quantity, sku: @lineitem.sku } }
    end

    assert_redirected_to lineitem_url(Lineitem.last)
  end

  test "should show lineitem" do
    get lineitem_url(@lineitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_lineitem_url(@lineitem)
    assert_response :success
  end

  test "should update lineitem" do
    patch lineitem_url(@lineitem), params: { lineitem: { description: @lineitem.description, order_id: @lineitem.order_id, price: @lineitem.price, product_id: @lineitem.product_id, quantity: @lineitem.quantity, sku: @lineitem.sku } }
    assert_redirected_to lineitem_url(@lineitem)
  end

  test "should destroy lineitem" do
    assert_difference('Lineitem.count', -1) do
      delete lineitem_url(@lineitem)
    end

    assert_redirected_to lineitems_url
  end
end
