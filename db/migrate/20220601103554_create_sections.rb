class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|

      t.timestamps
      t.string :standard
      t.string :section_name
      
    end
  end
end
