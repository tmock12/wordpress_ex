defmodule WordpressEx.Users do
  @moduledoc """
  Wordpress User endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.User

  @doc """
  Get a list of categories

  ## Examples:

      WordpressEx.Users.list()
      WordpressEx.Users.list(search: "username", per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/users/#list-users
  """
  def list(opts \\ []) do
    get("/users", opts)
    |> compose(User)
  end

  @doc """
  Get a single user from id

  ## Examples:

      WordpressEX.Users.find(123)
      WordpressEX.Users.find(123, context: "embed")

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/users/#retrieve-a-user
  """
  def find(id, opts \\ []) do
    get("/users/#{id}", opts)
    |> compose(User)
  end
end
