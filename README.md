# WordpressEx

**TODO: Add description**

## Installation

[Available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `wordpress_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:wordpress_ex, "~> 0.1.0"}
  ]
end
```

and then configuring your endpoint in `config/config.exs`:

```elixir
config :wordpress_ex,
  base_url: "http://demo.wp-api.org/wp-json/wp/v2"
]
```

Documentation can be found at [https://hexdocs.pm/wordpress_ex](https://hexdocs.pm/wordpress_ex).
