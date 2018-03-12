json.extract! lineitem, :id, :sku, :description, :quantity, :price, :product_id, :order_id, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)
