Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/flowers' => 'flowers#index'
      get '/flowers/new' => 'flowers#new'
      post '/flowers' => 'flowers#create'
      get '/flowers/:id' => 'flowers#show'
      get '/flowers/:id/edit' => 'flowers#edit'
      patch '/flowers/:id' => 'flowers#update'
      delete '/flowers/:id' => 'flowers#destroy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
