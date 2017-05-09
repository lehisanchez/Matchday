Rails.application.routes.draw do
  
  get 'dashboard' => 'dashboard#index', as: 'dashboard'

  devise_for :users

  authenticated :user do
    get '/', to: redirect('/dashboard')
  end

  resources :leagues,   except: [:new, :edit, :index], format: false
  resources :teams,     except: [:new, :edit, :index], format: false
  resources :matches,   except: [:new, :edit, :index, :show], format: false
  resources :standings, except: [:new, :edit, :index, :show], format: false
  
  root 'welcome#index'
end
