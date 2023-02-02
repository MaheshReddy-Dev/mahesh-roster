ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :password_confirmation, :role, :username,:company_id

  form do |f|
    f.inputs "User Details" do
      f.input :username
      f.input :email
      f.input :role, as: :select, collection: ['Manager', 'Technician','Developer','SupportRole']
      f.input :password      
      f.input :password_confirmation
      f.input :company_id, as: :select, collection: Company.all, include_blank: false
    end
    f.actions
  end



  # permit_params do
  #   permitted = [:email, :password_digest, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
