ActiveAdmin.register User do
  controller do
    def update
      unless params[:user]['password'] && params[:user]['password'].size > 0
        params[:user].delete 'password'
        params[:user].delete 'password_confirmation'
      end
      super do
        #do something
      end
    end
  end

  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
