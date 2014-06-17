Scheduler::Application.routes.draw do

  root "welcome#home"

  resources :users
  resources :sessions

  get   "meetings/new"   => 'meetings#new',      as: 'new_meeting'
  get   "meetings"       =>'meetings#index',     as: 'meetings'
  post  "meetings"       => 'meetings#create'
  # get   "meetings/edit"
  get   "meetings/:id"   =>'meetings#show',      as: 'meeting'

  get   "sign_up"        => "users#new",         as: "sign_up"
  get   "/login"         => "sessions#new",      as: "login"
  post  "/login"         => "sessions#create"
  get   "/logout"        => "sessions#destroy",  as: "logout"

  get   "execs"          => "execs#index"
  post  "execs"          => "execs#create"
  get   "execs/new"      =>'execs#new', as: 'new_exec'
  get   "execs/edit"
  get   "execs/:id"      => 'execs#show', as: 'exec'

end
