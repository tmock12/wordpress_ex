defmodule WordpressEx.PostsTest do
  use ExUnit.Case

  describe "list" do
    test "returns all posts" do
      {:ok, [post | posts]} = WordpressEx.Posts.list()
      assert Enum.count(posts) == 2
      assert post.title.rendered == "Hello world!"
    end
  end

  describe "find" do
    test "returns found post" do
      {:ok, post} = WordpressEx.Posts.find(123)
      assert post.title.rendered == "Hello world!"
    end
  end
end
