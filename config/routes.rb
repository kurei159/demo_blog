Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts #This routes site.com/posts

  root "posts#index" #This makes index to be the default page

end
