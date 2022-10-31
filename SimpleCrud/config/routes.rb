Rails.application.routes.draw do
  # when root(get '/' =>), HomeController to index action.
  root 'home#index'
  get '/home' => 'home#hi'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
