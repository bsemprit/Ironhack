Rails.application.routes.draw do

get "/" => "site#home"

resources :users, only:[:show, :create, :destroy, :new, :index] do
  resources :products, only:[:show, :index, :create, :destroy]
end

end
