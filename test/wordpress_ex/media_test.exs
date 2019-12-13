defmodule WordpressEx.MediaTest do
  use ExUnit.Case

  describe "list" do
    test "returns all media items" do
      {:ok, [media | media_items]} = WordpressEx.Media.list()
      assert Enum.count(media_items) == 2
      assert media.title.rendered == "Hello world!"
    end
  end

  describe "find" do
    test "returns found media item" do
      {:ok, media} = WordpressEx.Media.find(123)
      assert media.title.rendered == "Hello world!"
    end
  end
end
