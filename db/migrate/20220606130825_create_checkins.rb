class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|

      t.timestamps
      
      t.string :name
      t.references :student
      t.references :section
    end
  end
end
