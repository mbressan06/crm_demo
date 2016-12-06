ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :province_id


end
