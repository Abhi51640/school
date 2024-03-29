ActiveAdmin.register User do

permit_params :email, :first_name, :last_name , :gender, :city, :date_of_birth, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :gender
    column :city
    column :date_of_birth
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :gender
  filter :city
  filter :date_of_birth
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  
  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :gender
      f.input :city
      f.input :date_of_birth
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
  controller do
    
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        render :new, status: :unprocesseable_entity
      end
    end
  end
end  
