Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :users 


get    '/play',    to: "games#play"
get    '/login',   to: 'sessions#new'
get    '/round_score', to: 'records#round_score'
get    '/global_record', to: 'records#global'
 



post   '/login',   to: 'sessions#create'
post   '/test',	   to: 'games#test'


root "application#index"


end
