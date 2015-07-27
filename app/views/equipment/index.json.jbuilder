json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :equipment_name, :equipment_type, :plate_number, :quantity
  json.url equipment_url(equipment, format: :json)
end
