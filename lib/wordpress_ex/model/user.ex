defmodule WordpressEx.Model.User do
  @moduledoc """
  Contains the attributes of a user from wordpress.

  ## API Reference
  https://developer.wordpress.org/rest-api/reference/users/#schema
  """

  defstruct id: nil,
            username: nil,
            name: nil,
            first_name: nil,
            last_name: nil,
            email: nil,
            url: nil,
            description: nil,
            link: nil,
            locale: nil,
            nickname: nil,
            slug: nil,
            registered_date: nil,
            roles: [],
            password: nil,
            capabilities: [],
            extra_capabilities: [],
            avatar_urls: [],
            meta: []

end
