Mypaper::Application.routes.draw do
  resources :users
  root :to => 'users#index'

  mount Api::V1::Server => '/api/v1', :as => 'api_v1'

end