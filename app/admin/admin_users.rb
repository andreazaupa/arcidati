ActiveAdmin.register AdminUser do
 form do |f|
      f.inputs "Utente" do
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.buttons
    end



index do 
  column :email
    default_actions
end    
end
