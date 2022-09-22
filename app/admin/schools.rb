ActiveAdmin.register School do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :students_name, as: :string
  # filter :students   #This creates a dropdown with student names
  filter :name, filters: [:starts_with, :ends_with]

  permit_params :name

  index do
    selectable_column
    column "School Name", :name
    actions
  end

  index as: :grid do |school|
    link_to school.name, admin_school_path(school)
  end
end
