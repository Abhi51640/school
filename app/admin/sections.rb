ActiveAdmin.register Section do
  
  permit_params :standard, :section
  
  index do
    selectable_column
    id_column
    column :standard
    column :section
    actions
  end

  filter :standard
  filter :section
   
  form do |f|
    f.inputs do
      f.input :standard
      f.input :section
    end
    f.actions
  end
end
