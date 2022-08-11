defmodule KanjiTest do
  use ExUnit.Case
  doctest Kanji

  test "greets the world" do
    assert Kanji.hello() == :world
  end
end
