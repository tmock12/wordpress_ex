defmodule WordpressEx.PostsTest do
  use ExUnit.Case

  describe "list" do
    test "returns all posts" do
      posts = WordpressEx.Posts.list()
      assert Enum.count(posts) == 3
      assert Enum.at(posts, 0).title.rendered == "Hello world!"
    end
  end
end
