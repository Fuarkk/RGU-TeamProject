class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|

      t.string :post
      t.date :startDate
      t.date :endDate
      t.string :grade
      t.integer :salary
      t.integer :annualLeave
      t.string :probationStatus

      t.timestamps
    end
  end
end
