json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name, :email, :address1, :address2, :city, :state, :zip, :phone, :provider
  json.url profile_url(profile, format: :json)
end
