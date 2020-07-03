class CreateExtraDuties < ActiveRecord::Migration[5.1]
  def change
    create_table :extra_duties do |t|

      t.string :title

      t.timestamps
    end
  end
end
