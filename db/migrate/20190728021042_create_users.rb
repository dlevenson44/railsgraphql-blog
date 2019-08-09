class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.integer :number
      t.string :city
      t.integer :zipcode
      t.string :country
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
