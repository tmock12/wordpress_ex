defmodule WordpressEx.Model.Page do
  @moduledoc """
  Contains the attributes of a page from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/pages/#schema
  """

  defstruct id: nil,
            date: nil,
            date_gmt: nil,
            guid: %{
              rendered: nil
            },
            modified: nil,
            modified_gmt: nil,
            slug: nil,
            status: nil,
            type: nil,
            link: nil,
            title: %{
              rendered: nil
            },
            content: %{
              rendered: nil,
              protected: nil
            },
            excerpt: %{
              rendered: nil,
              protected: nil
            },
            author: nil,
            featured_media: nil,
            parent: nil,
            menu_order: nil,
            comment_status: nil,
            ping_status: nil,
            template: nil,
            meta: [],
            _links: %{
              self: [
                %{href: nil}
              ],
              collection: [
                %{
                  href: nil
                }
              ],
              about: [
                %{
                  href: nil
                }
              ],
              author: [
                %{
                  embeddable: nil,
                  href: nil
                }
              ],
              replies: [
                %{
                  embeddable: nil,
                  href: nil
                }
              ],
              "version-history": [
                %{
                  href: nil
                }
              ],
              "wp:attachment": [
                %{
                  href: nil
                }
              ],
              curies: [
                %{
                  name: nil,
                  href: nil,
                  templated: nil
                }
              ]
            }
end
