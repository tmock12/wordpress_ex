defmodule WordpressEx.CategoriesTest do
  use ExUnit.Case

  describe "list" do
    test "returns a list of categories" do
      {:ok, categories} = WordpressEx.Categories.list()
      assert Enum.count(categories) == 3
      assert Enum.at(categories, 0).name == "Hello category"
    end
  end
end
