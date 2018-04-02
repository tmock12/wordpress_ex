defmodule WordpressEx.Client do
  @moduledoc false
  @base_url Application.get_env(:wordpress_ex, :base_url, "")
  @http_client Application.get_env(:wordpress_ex, :http_client, HTTPoison)

  @doc """
  GET endpoint that returns a parsed response
  """
  def get(path, params) do
    response(:get, path, "", [], params: params)
    |> parse
  end

  defp parse({:ok, %{status_code: 200} = response}) do
    parse_json(response.body)
  end

  defp parse({_, response}) do
    with {:ok, error_json} <- parse_json(response.body) do
      {:error, error_json}
    else
      error -> {:error, error}
    end
  end

  defp parse_json(json) do
    Jason.decode(json, keys: :atoms)
  end

  defp response(method, path, body, headers, options) do
    @http_client.request(method, @base_url <> path, body, headers, options)
  end
end
