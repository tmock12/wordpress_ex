defmodule WordpressEx.Categories do
  @moduledoc """
  Wordpress Categories endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]

  @doc """
  Get a list of categories

  ## Examples:

      WordpressEx.Categories.list()
      WordpressEx.Categories.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/categories/#list-categories
  """
  def list(opts \\ []) do
    get("/categories", opts)
    |> compose(:category)
  end

  @doc """
  Get a single category from id

  ## Examples:

      WordpressEX.Categories.find(123)
      WordpressEX.Categories.find(123, context: embed)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/categories/#retrieve-a-category
  """
  def find(id, opts \\ []) do
    get("/categories/#{id}", opts)
    |> compose(:category)
  end
end
