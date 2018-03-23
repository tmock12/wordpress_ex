defmodule WordpressEx.Posts do
  @moduledoc """
  Wordpress Post endpoints
  """
  import WordpressEx.Client

  @doc """
  Get a list of posts

  ## Examples

      WordpressEx.Posts.list()
      WordpressEx.Posts.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/posts/#list-posts
  """
  def list(opts \\ []) do
    get("/posts", opts)
    |> Enum.map(&post_struct/1)
  end

  defp post_struct(values) do
    struct(WordpressEx.Model.Post, values)
  end
end
