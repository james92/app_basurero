AppBasurero::Application.routes.draw do
  resources :tables


  resources :users


  resources :roles


  resources :employees


  resources :jobs


  resources :product_types


  resources :brands


  #resources :subcategories, only: [:edit, :delete, :show]
  get "/subcategories/:id" => "subcategories#index", as: :subcategories
  post "/subcategories/:id" => "subcategories#create", as: :subcategory
  get "/subcategories/new/:id" => "subcategories#new", as: :new_subcategory
  get "/subcategories/show/:id" => "subcategories#show", as: :show_subcategory
  get "/subcategories/:id/edit" => "subcategories#edit", as: :edit_subcategory
  put "/subcategories/:id" => "subcategories#update", as: :subcategory
  delete "/subcategories/:id" => "subcategories#destroy", as: :subcategory

  resources :categories

  get "main/index"

  root to: "main#index"
  	
end
