json.extract! product, :id, :name, :sku, :description, :original_price, :discount_price, :weight, :min_order, :max_order, :tax_applied, :terms_condition, :created_at, :updated_at
json.url product_url(product, format: :json)
