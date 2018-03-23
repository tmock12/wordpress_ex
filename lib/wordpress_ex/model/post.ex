defmodule WordpressEx.Model.Post do
  @moduledoc """
  """
  defstruct id: nil,
            date: nil,
            date_gmt: nil,
            guid: %{rendered: nil},
            modified: nil,
            qodified_gmt: nil,
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
              protected: false
            },
            author: nil,
            featured_media: nil,
            comment_status: nil,
            ping_status: nil,
            sticky: nil,
            template: nil,
            format: nil,
            meta: [],
            categories: [],
            tags: [],
            _links: %{
              self: [%{href: nil}],
              collection: [%{href: nil}],
              about: [%{href: nil}],
              author: [%{embeddable: nil, href: nil}],
              replies: [%{embeddable: nil, href: nil}],
              version_history: [%{href: nil}],
              wp_attachment: [%{href: nil}],
              wp_term: [
                %{
                  taxonomy: nil,
                  embeddable: nil,
                  href: nil
                },
                %{
                  taxonomy: nil,
                  embeddable: nil,
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
