json.array!(@revised_contract_amounts) do |revised_contract_amount|
  json.extract! revised_contract_amount, :id, :amount
  json.url revised_contract_amount_url(revised_contract_amount, format: :json)
end
