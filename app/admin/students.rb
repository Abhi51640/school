ActiveAdmin.register Student do

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :father_name
    column :mother_name
    column :gender
    column :date_of_birth
    column :phone_no
    actions
  end

    filter  :first_name
    filter  :last_name
    filter  :father_name
    filter  :mother_name
    filter  :gender
    filter  :date_of_birth
    filter  :phone_no

  form do |f|
    f.inputs do
      f.input  :first_name
      f.input  :last_name
      f.input  :father_name 
      f.input  :mother_name
      f.input  :gender 
      f.input  :date_of_birth
      f.input  :phone_no
    end
    f.actions
  end

end
