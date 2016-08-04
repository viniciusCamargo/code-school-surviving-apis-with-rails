Rails.application.routes.draw do
  # resources :zombies
  # resources :zombies, only: :index
  resources :zombies, only: [:index, :show]
  resources :humans, except: [:destroy, :edit, :update]

  # with_options only: :index do |list|
  # 	list.resources :zombies
  # 	list.resources :humans
  # 	list.resources :medical_kits
  # end

  # resources :zombies, constraints: { subdomain: 'api' }
  # resources :humans, constraints: { subdomain: 'api' }
  # # ou
  # constraints subdomain: 'api' do
  # 	resources :zombies
  # 	resources :humans
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
