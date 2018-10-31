defmodule WordpressEx.Comments do
  @moduledoc """
  Wordpress Comment endpoints
  """

  import WordpressEx.Client, only: [get: 2, post: 2]
  import WordpressEx.StructComposer, only: [compose: 2]
  alias WordpressEx.Model.Comment

  @doc """
  Get a list of commnents

  ## Examples:

      WordpressEx.Comments.list()
      WordpressEx.Comments.list(page: 2, per_page: 3)

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/comments/#list-comments
  """
  def list(opts \\ []) do
    get("/comments", opts)
    |> compose(Comment)
  end

  @doc """
  Get a single comment from id

  ## Examples:

      WordpressEX.Comments.find(123)
      WordpressEX.Comments.find(123, context: "view")

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/comments/#retrieve-a-comment
  """
  def find(id, opts \\ []) do
    post("/comments/#{id}", opts)
    |> compose(Comment)
  end
end
