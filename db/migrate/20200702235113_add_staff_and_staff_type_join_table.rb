class AddStaffAndStaffTypeJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_staff_types, :id => false do |t|
      t.integer :staff_id
      t.integer :staff_type_id
    end
  end
end
