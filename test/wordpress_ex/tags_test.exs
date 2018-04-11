defmodule WordpressEx.TagsTest do
  use ExUnit.Case

  describe "list" do
    test "returns all tags" do
      {:ok, [tag | tags]} = WordpressEx.Tags.list()
      assert Enum.count(tags) == 2
      assert tag.name == "I'm a tag"
    end
  end

  describe "find" do
    test "returns found tag" do
      {:ok, tag} = WordpressEx.Tags.find(123)
      assert tag.name == "Tag Name"
    end
  end
end
