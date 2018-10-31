defmodule WordpressEx.Tags do
  @moduledoc """
  Wordpress Tag endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.Tag

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
    |> compose(Tag)
  end

  @doc """
  Get a single tag from id

  ## Examples:

      WordpressEX.Tags.find(123)
      WordpressEX.Tags.find(123, context: "embed")

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/itags/#retrieve-a-tag
  """
  def find(id, opts \\ []) do
    post("/tags/#{id}", opts)
    |> compose(Tag)
  end
end
