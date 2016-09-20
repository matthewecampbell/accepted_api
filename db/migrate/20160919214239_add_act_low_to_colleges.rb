class AddActLowToColleges < ActiveRecord::Migration[5.0]
  def change
    add_column :colleges, :act_low, :integer
    add_column :colleges, :act_high, :integer
  end
end
