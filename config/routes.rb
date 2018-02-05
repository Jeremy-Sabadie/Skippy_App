Rails.application.routes.draw do
  
    root "users#home"

  	
 	get    '/signup',  to: 'users#new'
 	get    '/login',   to: 'sessions#new'
 	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'



  resources :users

end

#   Prefix Verb   URI Pattern               Controller#Action
#     root GET    /                         users#home
#     help GET    /help(.:format)           static_pages#help
#    about GET    /about(.:format)          static_pages#about
#  contact GET    /contact(.:format)        static_pages#contact
#   signup GET    /signup(.:format)         users#new
#    login GET    /login(.:format)          sessions#new
#          POST   /login(.:format)          sessions#create
#   logout DELETE /logout(.:format)         sessions#destroy
#    users GET    /users(.:format)          users#index
#          POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
#edit_user GET    /users/:id/edit(.:format) users#edit
#     user GET    /users/:id(.:format)      users#show
#          PATCH  /users/:id(.:format)      users#update
#          PUT    /users/:id(.:format)      users#update
#          DELETE /users/:id(.:format)      users#destroy
#     users#destroy

