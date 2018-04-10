defmodule WordpressEx.Model.Tag do
  @moduledoc """
  Contains the attributes of a tag from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/tags/#schema
  """

  defstruct id: nil,
            count: nil,
            description: nil,
            link: nil,
            name: nil,
            slug: nil,
            taxonomy: nil,
            meta: [],
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
