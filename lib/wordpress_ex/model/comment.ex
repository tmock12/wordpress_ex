defmodule WordpressEx.Model.Comment do
  @moduledoc """
  Contains the attributes of a comment from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/comments/#schema
  """

  defstruct id: nil,
            post: nil,
            parent: nil,
            author: nil,
            author_name: nil,
            author_url: nil,
            date: nil,
            date_gmt: nil,
            content: %{
              rendered: nil
            },
            link: nil,
            status: nil,
            type: nil,
            author_avatar_urls: %{
              "24": nil,
              "48": nil,
              "96": nil
            },
            meta: [],
            _links: %{
              self: [%{href: nil}],
              collection: [
                %{href: nil}
              ],
              up: [
                %{
                  embeddable: nil,
                  post_type: nil,
                  href: nil
                }
              ],
              children: [
                %{href: nil}
              ]
            }
end
