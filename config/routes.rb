Rails.application.routes.draw do
  resources :leagues,   except: [:new, :edit, :index], format: false
  resources :teams,     except: [:new, :edit, :index], format: false
  resources :matches,   except: [:new, :edit, :index, :show], format: false
  resources :standings, except: [:new, :edit, :index, :show], format: false
  root 'welcome#index'
end
