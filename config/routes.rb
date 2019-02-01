Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products/favourites'
  resources :products, except: [:new, :edit, :update]
    get 'products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch 'products/:id', to: 'products#update', as: 'update_product'
  patch 'products/:id/favourite', to: 'products#set_favourite', as:'favourite_product'

  root 'products#index'
end
