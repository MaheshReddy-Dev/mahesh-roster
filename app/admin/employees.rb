ActiveAdmin.register Employee do

  permit_params :name, :company_id, :age, :gender, :email, :salary, :experience, :role,:password, :password_confirmation
  
  form do |f|
   f.inputs do
    f.input :name
    f.input :company_id, as: :select, collection: Company.all
    f.input :role, as: :select, collection: ['Technician','Developer','SupportRole']
    f.input :email
    f.input :salary
    f.input :age
    f.input :experience
    f.input :gender, as: :select, collection: ['Male', 'Female', 'Other']
    f.input :password      
    f.input :password_confirmation
   end
   f.actions
  end
  index do
    column("Company Name") { |employee| employee.company.try(:name) }
    column :name
    column :email
    column :salary
    column :age
    column :experience
    column :created_at
    actions
   end
end






  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   #
  # or
  #
      
  # permit_params do
  #   permitted = [:name, :company_id, :age, :gender]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end