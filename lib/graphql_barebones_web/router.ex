defmodule GraphqlBarebonesWeb.Router do
  use GraphqlBarebonesWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlBarebonesWeb do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlBarebonesWeb.Schema
    forward "/", Absinthe.Plug, schema: GraphqlBarebonesWeb.Schema
    
  end
end
