class CreateColleges < ActiveRecord::Migration[5.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.integer :total_price_in_state
      t.integer :total_price_out_of_state
      t.integer :percent_admitted
      t.integer :yield
      t.integer :total_applicants
      t.string :act_range
      t.string :city
      t.string :longitude
      t.string :latitude
      t.string :affiliation
      t.integer :six_year_grad_rate
      t.integer :total_enrollment
      t.timestamp :updated_at
      t.timestamp :created_at
      t.integer :act_low
      t.integer :act_high
    end
  end
end
