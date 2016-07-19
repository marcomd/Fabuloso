ActiveAdmin.register Comment do
  menu :if => proc{ can?(:manage, Comment) }

  controller do
    load_resource :except => :index
  end

  permit_params do
    permitted = [:id, :fable_id, :user_id, :description, :created_at, :updated_at]
    permitted
  end

  # ActiveLeonardo: Remove comments where you need it
  #index do
  #  selectable_column
  #  id_column
  #  column(:fable)
  #  column(:user)
  #  column(:description)              {|comment| comment.description}
  #  actions
  #end

  #show do |comment|
  #  attributes_table do
  #    row :id
  #    row(:fable)
  #    row(:user)
  #    row(:description)              {|comment| comment.description}
  #    row :created_at
  #    row :updated_at
  #  end
  #  # Insert here child tables
  #  #panel I18n.t('models.childs') do
  #  #  table_for comment.childs do
  #  #    column(:id) {|child| link_to child.id, [:admin, child]}
  #  #  end
  #  #end
  #  active_admin_comments
  #end

  #filter :fable
  #filter :user
  #filter :description

  #form do |f|
  #  f.inputs do
  #    f.input :fable
  #    f.input :user
  #    f.input :description
  #  end
  #  f.actions
  #end

  #csv do
  #  column(:fable)                    {|comment| comment.fable}
  #  column(:user)                     {|comment| comment.user}
  #  column(:description)              {|comment| comment.description}
  #end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
