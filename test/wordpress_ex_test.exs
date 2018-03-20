defmodule WordpressExTest do
  use ExUnit.Case
  doctest WordpressEx

  test "greets the world" do
    assert WordpressEx.hello() == :world
  end
end
