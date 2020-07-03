class CreateStaff < ActiveRecord::Migration[5.1]
  def change
    create_table :staff do |t|
      t.string :name
      t.date :dateOfBirth
      t.string :address
      t.string :postcode
      t.string :phone
      t.string :email
      t.string :jobTitle


      t.timestamps
    end
  end
end
