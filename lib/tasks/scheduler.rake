require 'csv'

desc "Import customers from csv files"
task :import => [:environment] do

  colleges     = "data/college_data_1.csv"

  CSV.foreach(colleges, headers: true) do |row|
    college = College.find_by(latitude: row.to_hash["latitude"])
    if college == nil
      College.create!(row.to_hash)
      puts "Created College #{college.id}"
    else
      puts "College already exists"
    end
  end
end
