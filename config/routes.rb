Rails.application.routes.draw do

  root 'static#home'
  get 'about' => 'static#about'
  get 'help' => 'static#help'
  get 'contact' => 'static#contact'
  get 'signup' => 'users#new'

  resources :users

  mount Attachinary::Engine => "/attachinary"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
