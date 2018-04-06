json.extract! page, :id, :label, :title, :description, :image, :profile_id, :created_at, :updated_at
json.url page_url(page, format: :json)
