defmodule WordpressEx.Client do
  require IEx
  @moduledoc false
  @base_url Application.get_env(:wordpress_ex, :base_url, "")
  @http_client Application.get_env(:wordpress_ex, :http_client, HTTPoison)
  @http_user Application.get_env(:wordpress_ex, :http_user, nil)
  @http_pass Application.get_env(:wordpress_ex, :http_pass, nil)

  @doc """
  GET endpoint that returns a parsed response
  """
  def get(path, params) do
    response(:get, path, "", [], params: params)
    |> parse
  end

  @doc """
  POST endpoint that returns a parsed response
  """
  def post(path, params) do
    params = case @http_user do
      nil -> [params: params]
      _ -> [params: params, hackney: [basic_auth: {@http_user, @http_pass}]]
    end

    response(:post, path, "", [], params: params)
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
