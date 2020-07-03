class AddStaffAndDepartmentsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :departments_staff, :id => false do |t|
      t.integer :department_id
      t.integer :staff_id
    end
  end
end
