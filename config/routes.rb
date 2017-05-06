Rails.application.routes.draw do
  resources :leagues, except: [:new, :edit, :index]
  resources :teams,   except: [:new, :edit, :index]
  root 'welcome#index'
end
