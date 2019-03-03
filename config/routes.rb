Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  resources :articles do
    resources :comments
  end

  resources :posters

  root to: "home#index"
end
