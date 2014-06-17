Scheduler::Application.routes.draw do

  root "welcome#home"
  resources :users
  resources :sessions

  get "meetings/new"
  get "meetings/edit"
  get "meetings"       =>'meetings#index',     as: 'meetings'
  get "meetings/:id"   =>'meetings#show',      as: 'meeting'
  get "sign_up"        => "users#new",         as: "sign_up"
  get "/login"         => "sessions#new",      as: "login"
  post "/login"        => "sessions#create"
  get "/logout"        => "sessions#destroy",  as: "logout"


  get "execs/new", to: 'execs#new', as: 'new_exec'
  get "execs/edit"
  get "execs/show"
  get "execs"         => "execs#index"

end
