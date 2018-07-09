require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'seoul_dong.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Road.new
  
  d = District.find_by_district_name(row['자치구'])
  t.district_id = d.id
  t.road_name = row['동']
  t.state_id = 1
  t.save
  
end



