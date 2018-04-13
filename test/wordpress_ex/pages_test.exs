defmodule WordpressEx.PagesTest do
  use ExUnit.Case

  describe "list" do
    test "returns a list of pages" do
      {:ok, [page | pages]} = WordpressEx.Pages.list()
      assert Enum.count(pages) == 9
      assert page.title.rendered == "Sample Page"
    end
  end
end
