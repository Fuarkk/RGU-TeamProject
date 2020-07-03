class AddStaffAndUserDutiesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :extra_duties_staff, :id => false do |t|
      t.integer :extra_duty_id
      t.integer :staff_id
    end
  end
end
