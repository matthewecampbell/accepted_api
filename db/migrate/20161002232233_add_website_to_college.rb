class AddWebsiteToCollege < ActiveRecord::Migration[5.0]
  def change
    add_column :colleges, :website, :string
    add_column :colleges, :phone_number, :string
    add_column :colleges, :financial_aid_address, :string
    add_column :colleges, :admissions_address, :string
    add_column :colleges, :application_address, :string
    add_column :colleges, :net_price_calculator, :string
    add_column :colleges, :average_price_after_financial_aid, :integer
    add_column :colleges, :average_price_if_less_than_30000, :integer
    add_column :colleges, :average_price_if_less_than_48000, :integer
    add_column :colleges, :average_price_if_less_than_75000, :integer
    add_column :colleges, :average_price_if_less_than_110000, :integer
    add_column :colleges, :average_price_if_greater_than_110000, :integer
    add_column :colleges, :ncaa_membership, :string
    add_column :colleges, :football_team?, :string
    add_column :colleges, :basketball_team?, :string
    add_column :colleges, :baseball_team?, :string
    add_column :colleges, :cross_country_team?, :string
  end
end
