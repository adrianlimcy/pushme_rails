Rails.application.routes.draw do
  resources :devices
  get '/notification/notify' => 'notification#notify'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
