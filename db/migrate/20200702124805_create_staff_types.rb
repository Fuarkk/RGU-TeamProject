class CreateStaffTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_types do |t|

      t.string :title

      t.timestamps
    end
  end
end
