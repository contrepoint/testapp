Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
