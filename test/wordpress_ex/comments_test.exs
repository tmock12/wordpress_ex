defmodule WordpressEx.CommentsTest do
  use ExUnit.Case

  describe "list" do
    test "returns a list of categories" do
      {:ok, [comment | comments]} = WordpressEx.Comments.list()
      assert Enum.count(comments) == 0
      assert comment.content.rendered == "<p>Hi, this is a comment</p>"
    end
  end
end
