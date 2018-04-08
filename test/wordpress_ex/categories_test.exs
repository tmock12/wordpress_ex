defmodule WordpressEx.CategoriesTest do
  use ExUnit.Case

  describe "list" do
    test "returns a list of categories" do
      {:ok, [category | categories]} = WordpressEx.Categories.list()
      assert Enum.count(categories) == 2
      assert category.name == "Hello category"
    end
  end

  describe "find" do
    test "returns found category" do
      {:ok, category} = WordpressEx.Categories.find(123)
      assert category.name == "Uncategorized"
    end
  end
end
