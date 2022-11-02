json.extract! order, :id, :name_order, :author_id, :processor_id, :mainboard_id, :memoryram_id, :videoboard_id, :created_at, :updated_at
json.url order_url(order, format: :json)
