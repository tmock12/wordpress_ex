defmodule WordpressEx.Test.Client do
  @base_url Application.get_env(:wordpress_ex, :base_url)

  def request(:get, @base_url <> "/" <> path, _body, _headers, _options) do
    with {:ok, body} <- File.read("test/fixtures/#{path}_response.json"),
         do: {:ok, %{body: body, status_code: 200}}
  end
end
