defmodule WordpressEx.Media do
  @moduledoc """
  Wordpress Media endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.Media

  @doc """
  Get a list of media

  ## Examples:

      WordpressEx.Media.list()
      WordpressEx.Media.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/media/#list-media
  """
  def list(opts \\ []) do
    get("/media", opts)
    |> compose(Media)
  end

  @doc """
  Get a single media item from id

  ## Examples:

      WordpressEX.Media.find(123)
      WordpressEX.Media.find(123, context: view)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/media/#retrieve-a-media-item
  """
  def find(id, opts \\ []) do
    get("/media/#{id}", opts)
    |> compose(Media)
  end
end
