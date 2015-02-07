json.array!(@staffings) do |staffing|
  json.extract! staffing, :id, :first_name, :last_name, :middle_name, :cost_per_hour, :lawfirm_id, :matter_id
  json.url staffing_url(staffing, format: :json)
end
