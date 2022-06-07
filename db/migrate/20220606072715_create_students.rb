class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|

      t.timestamps

      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.string :mother_name
      t.string :section
      t.string :gender
      t.string :phone_no
      t.datetime :date_of_birth
      t.string :active_admin_comments
    end  
  end
end
