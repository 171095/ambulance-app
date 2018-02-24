class AddDetailsToAmbulance < ActiveRecord::Migration[5.1]
  def change
    add_column :ambulances, :ambulance_number, :string
    add_column :ambulances, :mobile_number, :string
    add_column :ambulances, :owner_name, :string
  end
end
