defmodule WordpressEx.TagsTest do
  use ExUnit.Case

  describe "list" do
    test "returns all tags" do
      {:ok, [tag | tags]} = WordpressEx.Tags.list()
      assert Enum.count(tags) == 2
      assert tag.name == "I'm a tag"
    end
  end
end
