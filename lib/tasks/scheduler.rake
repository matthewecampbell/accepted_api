require 'csv'

desc "Import customers from csv files"
task :import => [:environment] do

  colleges     = "data/college_data.csv"

  CSV.foreach(colleges, headers: true) do |row|
    college = College.create!(row.to_hash)
    puts "Created College #{college.id}"
  end
end
