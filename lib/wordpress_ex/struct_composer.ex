defmodule WordpressEx.StructComposer do
  @moduledoc false

  def compose({:ok, values}, struct_name) when is_list(values) do
    structs =
      values
      |> Enum.map(&struct(struct_name, &1))

    {:ok, structs}
  end

  def compose({:ok, value}, struct_name) do
    {:ok, struct(struct_name, value)}
  end

  def compose(error = {:error, _}, _struct_name) do
    error
  end
end
