class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.datetime :date_of_birth
      t.string :phone_number
      t.references :address
      t.references :company

      t.timestamps
    end
  end
end
