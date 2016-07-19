ActiveAdmin.register User do
  menu :if => proc{ can?(:manage, User) }

  controller do
    def update
      unless params[:user]['password'] && params[:user]['password'].size > 0
        params[:user].delete 'password'
        params[:user].delete 'password_confirmation'
      end
      super
    end
  end

  permit_params :email, :password, :password_confirmation, roles: []

  index do
    selectable_column
    id_column
    column :email
    column(:roles) { |record| record.roles.join(', ') }
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
      f.input :roles, :as => :check_boxes, :collection => User::ROLES
    end
    f.actions
  end

end
