Rails.application.routes.draw do
  #if Rails.env.development?
    #mount GraphQL::Rails::Engine, at: "/graphql", graphql_path: "/graphql"
  #end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
