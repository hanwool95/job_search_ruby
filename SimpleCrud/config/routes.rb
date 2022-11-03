Rails.application.routes.draw do
  resources :users
  # when root(get '/' =>), HomeController to index action.
  root 'home#index'
  get '/home' => 'home#hi'
  get '/calculator' => 'calculator#index'
  get '/calculator/poster' => 'calculator#poster'
  get '/calculator/result' => 'calculator#result'
  post '/calculator/result' => 'calculator#result'
  
  get '/plus/:num1/:num2' => "calculator#plus"
  
  get '/board' => "board#index"
  get '/board/write' => "board#write"
  get '/board/modify/:post_id' => 'board#modify'
  post '/board/update/:post_id' => 'board#update'
  post '/board' => "board#create"

  get '/board/:id' => "board#show"

  get '/board/delete/:post_id' => 'board#delete'
  


end
