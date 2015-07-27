json.array!(@time_extensions) do |time_extension|
  json.extract! time_extension, :id, :date
  json.url time_extension_url(time_extension, format: :json)
end
