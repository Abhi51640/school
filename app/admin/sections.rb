ActiveAdmin.register Section do
  
  permit_params :standard, :section
  
  index do
    # binding.pry
    selectable_column
    id_column
    column :standard
<<<<<<< HEAD
    column :section 
    column :students do |section|
      link_to 'Student Details', admin_students_path(section_id: section.id)
    end 
=======
    column :section
    column :students do |section|
      link_to 'Student Details', admin_students_path(section_id: section.id)
    end
>>>>>>> 3feb3902f941ca334360607ce302abc000b99c2a
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
