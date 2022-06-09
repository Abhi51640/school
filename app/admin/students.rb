ActiveAdmin.register Student do

     permit_params :first_name,:last_name,:father_name,:mother_name,:gender,:date_of_birth,:phone_no

    filter :first_name
    filter :last_name
    filter :father_name
    filter :mother_name
    filter :gender
    filter :date_of_birth
    filter :phone_no


      # filter :student_id,
      #              as: :search_select_filter,
      #              fields: %i[first_name last_name],
      #              display_name: :full_name

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
  
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :father_name 
      f.input :mother_name
      f.input :gender 
      f.input :date_of_birth
      f.input :phone_no
    end
    f.actions
  end

  member_action :generate_qr, method: :put do
    file_path = resource.generate_qr
    send_file file_path 
  end

  action_item :generate_qr,  only: [ :show ] do
     # binding.pry
    link_to "Generate QR", generate_qr_admin_student_path(id: resource.id), method: :put
  end
end
