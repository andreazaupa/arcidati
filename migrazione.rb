require 'csv'
h=["Id", "Code", "Name", "Surname", "Birth", "Year", "Comitee", "Club", "CustomerI", "Email", "Adress", "City", "Province", "CountryCode", "Privacy", "Cap", "CreatedAt", "UpdatedAt"]
h=h.collect{|e| e.underscore}
csv=CSV.read(File.new(File.join(Rails.root,"csv.csv")))
ar=[]
csv=csv[1..-2]
csv.each do |r|
  par={}
  h.each_with_index do |hh,i|
    par[hh.to_sym]=r[i]
  end 
  Card.create par
  ar << par
end