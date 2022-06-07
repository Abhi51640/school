ActiveAdmin.register Section do



   permit_params :standard, :section

   filter :standard
   filter :section
   
  index do
    selectable_column
      id_column
      column :standard
      column :section
      actions
    end
   
   form do |f|
     f.inputs do
       f.input :standard
       f.input :section
    end
    f.actions
    end
  
end
