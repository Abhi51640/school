ActiveAdmin.register Section do
  
  permit_params :standard, :section
  
  index do
    selectable_column
    id_column
    column :standard
    column :section
    column :students do |section|
      link_to 'Student Details', admin_students_path(section_id: section.id)
    end
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
