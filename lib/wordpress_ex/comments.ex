defmodule WordpressEx.Comments do
  @moduledoc """
  Wordpress Comment endpoints
  """

  import WordpressEx.Client, only: [get: 2]
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
end
