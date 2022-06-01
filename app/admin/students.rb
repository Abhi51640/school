ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :father_name, :mother_name, :gender, :date_of_birth, :phone_no
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :father_name, :mother_name, :gender, :date_of_birth, :phone_no]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

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
