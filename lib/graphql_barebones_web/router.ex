defmodule GraphqlBarebonesWeb.Router do
  use GraphqlBarebonesWeb, :router

  scope "/" do
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlBarebonesWeb.Schema
    forward "/", Absinthe.Plug, schema: GraphqlBarebonesWeb.Schema
  end
  
end
