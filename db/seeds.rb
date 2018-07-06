require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'food_name.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Food.new
  t.food_name = row['음식']
  
  t.save
  
end



