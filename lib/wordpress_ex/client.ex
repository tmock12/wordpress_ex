defmodule WordpressEx.Client do
  @moduledoc """
  API client for Wordpress REST API
  """
  @base_url Application.get_env(:wordpress_ex, :base_url, "")
  @http_client Application.get_env(:wordpress_ex, :http_client, HTTPoison)

  def get(path, params) do
    parsed_response(:get, path, "", [], params: params)
  end

  defp parsed_response(method, path, body, headers, options) do
    with {:ok, response} <- response(method, path, body, headers, options),
         {:ok, parsed_json} <- parse_json(response.body) do
      parsed_json
    end
  end

  defp parse_json(json) do
    Jason.decode(json, keys: :atoms)
  end

  defp response(method, path, body, headers, options) do
    @http_client.request(method, @base_url <> path, body, headers, options)
  end
end
