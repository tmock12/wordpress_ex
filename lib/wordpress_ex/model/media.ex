defmodule WordpressEx.Model.Media do
  @moduledoc """
  Contains the attributes of a tag from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/media/#schema
  """

  defstruct id: nil,
            date: nil,
            date_gmt: nil,
            guid: %{rendered: nil},
            link: nil,
            modified: nil,
            modified_gmt: nil,
            slug: nil,
            status: nil,
            type: nil,
            title: nil,
            author: nil,
            comment_status: nil,
            ping_status: nil,
            meta: [],
            alt_text: nil,
            caption: nil,
            description: nil,
            media_type: nil,
            mime_type: nil,
            media_details: nil,
            post: nil,
            source_url: nil,
            _links: %{
              self: [
                %{href: nil}
              ],
              collection: [
                %{href: nil}
              ],
              about: [
                %{href: nil}
              ],
              "wp:post_type": [
                %{href: nil}
              ],
              curies: [
                %{name: nil, href: nil, templated: true}
              ]
            }
end
