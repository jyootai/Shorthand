Rails.application.routes.draw do
  root 'homes#index'
  get ':username/:note_id'  =>"notes#show", :as=>"note"
  resources :notes, except: [:show]
end
