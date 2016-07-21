ActiveAdmin.register Fable do
  menu :if => proc{ can?(:read, Fable) }

  # also look in to before_create if hidden on form
  # before_build
  before_create do |record|
    record.user = current_user
  end

  controller do
    load_resource :except => :index
  end

  permit_params do
    permitted = [:id, :user_id, :name, :story, :summary, :views, :likes, :created_at, :updated_at, :logo]
    permitted
  end

  # ActiveLeonardo: Remove comments where you need it
  index do
   selectable_column
   id_column
   column(:user)
   column(:name)                     {|fable| fable.name}
  #  column(:story)                    {|fable| fable.story}
  #  column(:summary)                  {|fable| fable.summary}
   column(:views)                    {|fable| fable.views}
   column(:likes)                    {|fable| fable.likes}
   actions
  end

  show do |fable|
   attributes_table do
     row :id
     row(:user)
     row(:logo)                     {|fable| image_tag(fable.logo.url(:thumb), :height => '200')}
     row(:name)                     {|fable| fable.name}
     row(:summary)                  {|fable| fable.summary}
     row(:story)                    {|fable| fable.story.html_safe}
     row(:views)                    {|fable| fable.views}
     row(:likes)                    {|fable| fable.likes}
     row :created_at
     row :updated_at
   end
   # Insert here child tables
   #panel I18n.t('models.childs') do
   #  table_for fable.childs do
   #    column(:id) {|child| link_to child.id, [:admin, child]}
   #  end
   #end
   active_admin_comments
  end

  filter :user
  filter :name
  filter :story
  filter :summary
  filter :views
  filter :likes

  form do |f|
   f.inputs do
     f.input :user if current_user.admin?
     f.input :logo, required: false #:as => :file #, :hint => f.template.image_tag(f.object.logo.url(:medium))
     f.input :name
     f.input :summary
     f.input :story, as: :ckeditor, input_html: {rows: 25, class: 'ckeditor'}
    #  f.input :views
    #  f.input :likes
   end
   f.actions
  end



  #csv do
  #  column(:user)                     {|fable| fable.user}
  #  column(:name)                     {|fable| fable.name}
  #  column(:story)                    {|fable| fable.story}
  #  column(:summary)                  {|fable| fable.summary}
  #  column(:views)                    {|fable| fable.views}
  #  column(:likes)                    {|fable| fable.likes}
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
