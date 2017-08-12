Rails.application.routes.draw do
  resources :comments do
    resources :tasks,only:[:create,:destroy]
    resources :likes,only:[:create,:destroy]
  end
  root 'comments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
