Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'pris#index'
    devise_for :users

    get   'pris'      =>  'pris#index'
    get   'pris/new'  =>  'pris#new'
    post  'pris'      =>  'pris#create'
    delete  'pris/:id'  => 'pris#destroy'
    get  'pris/:id/edit' => 'pris#edit'
    patch 'pris/:id'  =>  'pris#update'
    get 'pris/:id' => 'pris#show'  

end
