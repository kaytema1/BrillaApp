class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.date :date_of_birth
      t.string :country
      t.string :region_state
      t.string :city_town
      t.string :neighborhood
      t.text :address
      t.string :phone_number

      t.timestamps
    end
  end
end
