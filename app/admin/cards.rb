ActiveAdmin.register Card do

 form do |f|
      f.inputs "Carta" do
        f.input :code
        f.input :year
        f.input :name
        f.input :surname
        f.input :email
        f.input :comitee
        f.input :club
      end
      f.inputs "Dettagli" do
      	f.input :birth, :start_year => 1900, :end_year => Time.now.year
      	f.input :adress
      	f.input :city
      	f.input :cap
      	f.input :province
      	f.input :country_code
        f.input :privacy
      end
      f.buttons
    end



index do 
  column :human_name
  column :email
  column :year
  column :code
    default_actions
end  
end
