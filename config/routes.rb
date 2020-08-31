Rails.application.routes.draw do

   resources :posts
   resources :bloggers
   resources :destinations 

  post "/bloggers/new", to: 'bloggers#new', as:'new_blogger_path'

  
end
