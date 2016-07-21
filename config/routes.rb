Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :charts
  resources :fables do
    member do
      get 'update_likes'
    end
    resources :comments
  end
  devise_for :users #, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'fables#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
