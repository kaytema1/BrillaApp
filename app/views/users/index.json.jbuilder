json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :middle_name, :last_name, :gender, :date_of_birth, :country, :region_state, :city_town, :neighborhood, :address, :phone_number
  json.url user_url(user, format: :json)
end
