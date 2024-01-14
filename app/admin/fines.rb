ActiveAdmin.register Fine do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :reason, :place, :time_of_issue, :amount, :payment_status, :penalty_amount, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:reason, :place, :time_of_issue, :amount, :payment_status, :penalty_amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs "Fine" do
      f.input :user_id, as: :select, collection: User.pluck(:email, :id), label: "Select User"
      f.input :place
      f.input :reason
      f.input :time_of_issue
      f.input :amount
      f.input :payment_status, as: :select, collection: ['Unpaid', 'Paid']
      f.input :penalty_amount
      f.actions
    end
  end

  filter :place
  
end
