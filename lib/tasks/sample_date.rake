namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(
                  username: "kaytema",
			      first_name: "Emmanuel",
			      middle_name: "Bediako",
			      last_name: "Addo-Yirenkyi",
			      gender: "Male",
			      country: "Ghana",
			      region_state: "Greater Accra",
			      city_town: "Accra",
			      neighborhood: "East Legon",
			      address: "No. 19 Banana Street",
			      phone_number: "0501353579")
    99.times do |n|
			      username  = Faker::Name.first_name,
			      first_name = Faker::Name.first_name,
			      middle_name = Faker::Name.last_name,
			      last_name = Faker::Name.last_name,
				  gender = "Male",
			      
			      country = Faker::Address.country,
			      region_state = Faker::Address.state,
			      city_town = Faker::Address.city,
			      neighborhood = Faker::Address.street_name,
			      address = Faker::Address.street_address,
			      phone_number = Faker::PhoneNumber.cell_phone, 

      User.create!(username: username,
                   first_name: first_name,
                   middle_name: middle_name,
                   last_name: last_name,
                   gender: gender,
                   
                   country: country,
                   region_state: region_state,
                   city_town: city_town,
                   neighborhood: neighborhood,
                   address: address,
                   phone_number: phone_number)
    end
  end
end