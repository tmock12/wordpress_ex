defmodule WordpressEx.Posts do
  @moduledoc """
  Wordpress Post endpoints
  """
  import WordpressEx.Client

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
    |> create_struct
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
    |> create_struct
  end

  defp create_struct({:ok, values}) when is_list(values) do
    structs =
      values
      |> Enum.map(&convert_struct/1)

    {:ok, structs}
  end

  defp create_struct({:ok, value}) do
    {:ok, convert_struct(value)}
  end

  defp create_struct(error = {:error, _}) do
    error
  end

  defp convert_struct(%{type: "post"} = value) do
    struct(WordpressEx.Model.Post, value)
  end
end
