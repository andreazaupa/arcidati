class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :code
      t.string :name
      t.string :surname
      t.date :birth
      t.integer :year 
      t.string :comitee ,:default=>"Vicenza"
      t.string :club,:default=>"La caneva"
      t.integer :customer_i
      t.string :email
      t.string :adress
      t.string :city
      t.string :province
      t.string :country_code,:default=>"IT"
      t.boolean :privacy,:default=>true
      t.string :cap

      t.timestamps
    end




  end
end
