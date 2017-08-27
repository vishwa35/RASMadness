Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/comps_display', to: 'api#comps_display'
  post '/comp_teams', to: 'api#get_team_list'
  post '/get_user', to: 'api#get_user'
  post '/id_get_user', to: 'api#id_get_user'
  post '/save_profile', to: 'api#save_profile'
  post '/save_preds', to: 'api#save_preds'
  post '/get_preds', to: 'api#get_preds'
  post '/get_standings', to: 'api#get_standings'

  get '/', to: 'home#index'
  get '/account', to: 'profile#index'
  get '/standings', to: 'standings#index'
end
