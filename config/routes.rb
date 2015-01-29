Rails.application.routes.draw do
  root 'homes#index'
  get '/search'  =>'homes#search', :as=>'search'
  get ':username/:note_id'  =>"notes#show", :as=>"note"
  get ':username'  =>"notes#user", :as=>"user"
  resources :notes, except: [:show]
end
