Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :user, only: [:show]
  resources :pets, except: [:edit] do
    member do
      get 'listing'
      get 'description'
      get 'photo_upload'
      get 'location'
      delete :delete_image_attachment
    end
  end
end
