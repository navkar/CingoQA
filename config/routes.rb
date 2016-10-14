Rails.application.routes.draw do

   namespace :v1, defaults: { format: :json } do
              #        constraints: { subdomain: 'api' }, path: '/'  do
         # scope module: :v1 do
         # We are going to list our resources here
         resources :questions, :only => [:show]
   end

   # http://localhost:3000/v2/questions/17/comments/1
   namespace :v2, defaults: { format: :json } do
              #        constraints: { subdomain: 'api' }, path: '/'  do
         # scope module: :v1 do
         # We are going to list our resources here
         resources :questions, :only => [:show] do
           resources  :comments, :only => [:show]
         end
   end

  resources :answers
  resources :questions
   root 'home#index'
   # create a new route in the home controller with action about
   get '/about' => 'home#about'
end
