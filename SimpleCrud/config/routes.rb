Rails.application.routes.draw do
  # when root(get '/' =>), HomeController to index action.
  root 'home#index'
  get '/home' => 'home#hi'
  get '/calculator' => 'calculator#index'
  get '/calculator/poster' => 'calculator#poster'
  get '/calculator/result' => 'calculator#result'
  post '/calculator/result' => 'calculator#result'
  
  get '/plus/:num1/:num2' => "calculator#plus"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
