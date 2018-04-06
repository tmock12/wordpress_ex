defmodule WordpressEx.StructComposer do
  @moduledoc false

  def compose({:ok, values}, struct_name) when is_list(values) do
    structs =
      values
      |> Enum.map(&convert_struct(&1, struct_name))

    {:ok, structs}
  end

  def compose({:ok, value}, struct_name) do
    {:ok, convert_struct(value, struct_name)}
  end

  def compose(error = {:error, _}, _struct_name) do
    error
  end

  defp convert_struct(value, :post) do
    struct(WordpressEx.Model.Post, value)
  end

  defp convert_struct(value, :category) do
    struct(WordpressEx.Model.Category, value)
  end
end
