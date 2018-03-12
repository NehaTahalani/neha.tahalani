require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { address_id: @order.address_id, dilivery_date: @order.dilivery_date, is_customer_pickup: @order.is_customer_pickup, is_express_delivery: @order.is_express_delivery, order_currency: @order.order_currency, order_no: @order.order_no, order_value: @order.order_value, special_instruction: @order.special_instruction, tracking_no: @order.tracking_no, user_id: @order.user_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { address_id: @order.address_id, dilivery_date: @order.dilivery_date, is_customer_pickup: @order.is_customer_pickup, is_express_delivery: @order.is_express_delivery, order_currency: @order.order_currency, order_no: @order.order_no, order_value: @order.order_value, special_instruction: @order.special_instruction, tracking_no: @order.tracking_no, user_id: @order.user_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
