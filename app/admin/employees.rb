ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :company_id, :age, :gender, :mail_id, :salary, :experience
  #
  # or
  #
   permit_params :comma
      form do |f|
        f.inputs do
        f.input :name
        f.input :company_id, as: :select, collection: Company.all, input_html: { class: 'chzn-select', width: 'auto', "data-placeholder" => 'Click', include_blank: "-none-", include_hidden: false }
        f.input :mail_id
        f.input :salary
        f.input :age 
        f.input :experience
        f.input :gender, as: :select, collection: ['Male', 'Female', 'Other']
        end
        f.actions
    end
        
    
  # permit_params do
  #   permitted = [:name, :company_id, :age, :gender]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
