ActiveAdmin.register Chart do
  menu :if => proc{ can?(:read, Chart) }

  controller do
    load_resource :except => :index
  end

  permit_params do
    permitted = [:id, :fable_id, :user_id, :reference_date, :point, :created_at, :updated_at]
    permitted
  end

  # ActiveLeonardo: Remove comments where you need it
  #index do
  #  selectable_column
  #  id_column
  #  column(:fable)
  #  column(:user)
  #  column(:reference_date)           {|chart| chart.reference_date}
  #  column(:point)                    {|chart| chart.point}
  #  actions
  #end

  #show do |chart|
  #  attributes_table do
  #    row :id
  #    row(:fable)
  #    row(:user)
  #    row(:reference_date)           {|chart| chart.reference_date}
  #    row(:point)                    {|chart| chart.point}
  #    row :created_at
  #    row :updated_at
  #  end
  #  # Insert here child tables
  #  #panel I18n.t('models.childs') do
  #  #  table_for chart.childs do
  #  #    column(:id) {|child| link_to child.id, [:admin, child]}
  #  #  end
  #  #end
  #  active_admin_comments
  #end

  #filter :fable
  #filter :user
  #filter :reference_date
  #filter :point

  #form do |f|
  #  f.inputs do
  #    f.input :fable
  #    f.input :user
  #    f.input :reference_date, as: :datepicker, input_html: { class: 'calendar' }
  #    f.input :point
  #  end
  #  f.actions
  #end

  #csv do
  #  column(:fable)                    {|chart| chart.fable}
  #  column(:user)                     {|chart| chart.user}
  #  column(:reference_date)           {|chart| chart.reference_date}
  #  column(:point)                    {|chart| chart.point}
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
