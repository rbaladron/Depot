Rails.application.routes.draw do
  resources :orders
  resources :line_items do
    #member do
    #   post 'decrement'
    #end
    put 'decrease', on: :member
    put 'increase', on: :member
  end
  resources :carts

  get 'store/index'

  resources :products do
    get :download, :on=> :member
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'store#index', as: 'store'


end
