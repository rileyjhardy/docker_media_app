Rails.application.routes.draw do
  resources :messages do
    collection do 
      get :retrieve
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'messages#index'
end
