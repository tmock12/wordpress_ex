defmodule WordpressEx.Model.Category do
  @moduledoc """
  Contains the attributes of a category from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/categories/#schema
  """

  defstruct id: nil,
            count: nil,
            description: nil,
            link: nil,
            name: nil,
            slug: nil,
            taxonomy: nil,
            parent: nil,
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
              wp_post_type: [
                %{href: nil}
              ],
              curies: [
                %{name: nil, href: nil, templated: true}
              ]
            }
end
