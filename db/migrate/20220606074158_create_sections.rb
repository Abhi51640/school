class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|

      t.timestamps
      t.string :section
      t.string :standard
      t.references :student
    end
  end
end