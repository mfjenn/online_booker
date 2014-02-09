json.array!(@users) do |user|
  json.extract! user, :id, :fisrt_name, :last_name, :email, :address1, :address2, :city, :state, :zip, :phone, :title
  json.url user_url(user, format: :json)
end
