Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'

  get '/explorer', to: 'explorer#index'
  get '/mining', to: 'mining#index'
  get '/network', to: 'network#index'
  get '/resources', to: 'resources#index'
  
  get '/search', to: 'search#index'
end
