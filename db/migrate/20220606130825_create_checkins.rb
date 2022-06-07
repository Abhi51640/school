class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|

      t.timestamps
      
      t.string :student
      t.string :section
    end
  end
end
