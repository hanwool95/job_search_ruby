Rails.application.routes.draw do
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
  post '/board' => "board#create"

end
