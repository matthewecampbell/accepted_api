class AddAddressToColleges < ActiveRecord::Migration[5.0]
  def change
    add_column :colleges, :address, :string
    add_column :colleges, :zip, :integer
    add_column :colleges, :state, :string
  end
end
