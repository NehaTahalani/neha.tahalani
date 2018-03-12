json.extract! order, :id, :order_no, :tracking_no, :is_express_delivery, :is_customer_pickup, :dilivery_date, :order_currency, :special_instruction, :order_value, :user_id, :address_id, :created_at, :updated_at
json.url order_url(order, format: :json)
