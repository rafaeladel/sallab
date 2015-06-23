json.array!(@branches) do |branch|
  json.extract! branch, :id, :address, :phone, :region_id, :lat, :long
  json.url branch_url(branch, format: :json)
end
