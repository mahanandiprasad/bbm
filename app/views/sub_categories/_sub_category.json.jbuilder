json.extract! sub_category, :id, :name, :description, :slug, :category_id, :created_at, :updated_at
json.url sub_category_url(sub_category, format: :json)
