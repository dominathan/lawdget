json.array!(@matters) do |matter|
  json.extract! matter, :id, :fixed_fee, :cost, :expect_hours, :lawfirm_id
  json.url matter_url(matter, format: :json)
end
