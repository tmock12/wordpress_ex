defmodule WordpressEx.Posts do
  @moduledoc """
  Wordpress Post endpoints
  """
  import WordpressEx.Client, only: [get: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.Post

  @doc """
  Get a list of posts

  ## Examples:

      WordpressEx.Posts.list()
      WordpressEx.Posts.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/posts/#list-posts
  """
  def list(opts \\ []) do
    get("/posts", opts)
    |> compose(Post)
  end

  @doc """
  Get a single post from id

  ## Examples:

      WordpressEX.Posts.find(123)
      WordpressEX.Posts.find(123, context: view)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/posts/#retrieve-a-post
  """
  def find(id, opts \\ []) do
    get("/posts/#{id}", opts)
    |> compose(Post)
  end
end
