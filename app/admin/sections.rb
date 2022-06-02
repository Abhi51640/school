ActiveAdmin.register Section do


   permit_params :standard, :section_name

  index do
    selectable_column
      id_column
      column :standard
      column :section_name
      actions
    end
   filter :standard
   filter :section_name
   
   form do |f|
     f.inputs do
       f.input :standard
       f.input :section_name
    end
    f.actions
    end
end