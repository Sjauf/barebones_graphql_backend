defmodule GraphqlBarebones.DB do
    def data() do
      Dataloader.Ecto.new(GraphqlBarebones.Repo, query: &query/2)
    end
  
    def query(queryable, _params) do
      queryable
    end
  end