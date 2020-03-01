Rails.application.routes.draw do
  
  devise_for :users
  root 'static_page#index'
  namespace :coach do
    resources :teams, only: [:new, :create, :show]
  end
  get 'tour', to: 'static_page#tour'
  get 'policy', to: 'static_page#policy'
  get 'team', to: 'static_page#team'
  get 'contact', to: 'static_page#contact'
  get 'service', to: 'static_page#services'
  get 'gallery', to: 'static_page#gallery'
  get 'about', to: 'static_page#about'
end
