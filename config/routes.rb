Rails.application.routes.draw do

  get 'sessions/new'

  root 'static#home'
  get 'about'     => 'static#about'
  get 'help'      => 'static#help'
  get 'contact'   => 'static#contact'
  get 'signup'    => 'users#new'
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users

  mount Attachinary::Engine => "/attachinary"

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
