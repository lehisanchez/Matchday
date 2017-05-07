Rails.application.routes.draw do
  resources :leagues,   except: [:new, :edit, :index]
  resources :teams,     except: [:new, :edit, :index]
  resources :standings, except: [:new, :edit, :index, :show]
  root 'welcome#index'
end
