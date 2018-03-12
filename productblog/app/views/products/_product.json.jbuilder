json.extract! product, :id, :sku, :name, :quantity, :length, :width, :height, :weight, :price, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
