defmodule WordpressEx.Tags do
  @moduledoc """
  Wordpress Tag endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]

  @doc """
  Get a list of categories

  ## Examples:

      WordpressEx.Tags.list()
      WordpressEx.Tags.list(search: "a tag", per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/tags/#list-tags
  """
  def list(opts \\ []) do
    get("/tags", opts)
    |> compose(:tag)
  end
end
