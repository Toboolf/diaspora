defmodule DiasporaTest do
  use ExUnit.Case
  doctest Diaspora

  test "greets the world" do
    assert Diaspora.hello() == :world
  end
end
