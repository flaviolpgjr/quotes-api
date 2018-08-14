Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'quotes/:tag', to: 'quotes#get_quotes',      via: [:get]
  match 'user_token', to: 'user_token#create', via: [:post]
  match 'user/register', to: 'users#register', via: [:post]
end
