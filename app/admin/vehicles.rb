ActiveAdmin.register Vehicle do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :plate_number, :vehicle_type, :brand, :year, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:plate_number, :vehicle_type, :brand, :year, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :plate_number
  
end
