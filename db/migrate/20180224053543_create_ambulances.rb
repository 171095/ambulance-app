class CreateAmbulances < ActiveRecord::Migration[5.1]
  def change
    create_table :ambulances do |t|
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
