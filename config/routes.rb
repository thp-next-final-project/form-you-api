Rails.application.routes.default_url_options[:host] = 'localhost:3001'

Rails.application.routes.draw do

  resources :promotion_user_jointures
  resources :promotions
  resources :category_formation_jointures
  resources :formations
  resources :rooms
  resources :categories
  namespace :api, defaults: { format: :json } do
    resources :users, only: %w[show]
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

end
