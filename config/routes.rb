Rails.application.routes.draw do
  root to: 'home#index'
  resources :periodicities, only: [:index]
  resources :product_categories, only:[:index]
  resources :product_plans, only:[:index]

end
