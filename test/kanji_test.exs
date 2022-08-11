defmodule KanjiTest do
  use ExUnit.Case
  doctest Kanji

  @text """
  吾輩は猫である。名前はまだ無い。
  　どこで生れたかとんと見当がつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
  """

  describe "kanji?/1" do
    test "returns true when given character is kanji" do
      assert Kanji.kanji?(?漢)
    end

    test "returns false when given character is non-kanji" do
      refute Kanji.kanji?(?あ)
      refute Kanji.kanji?(?ア)
      refute Kanji.kanji?(?A)
    end

    test "filter only kanji" do
      assert "吾輩猫名前無生見当何薄暗所泣事記憶" ===
               @text
               |> String.to_charlist()
               |> Enum.filter(&Kanji.kanji?/1)
               |> String.Chars.to_string()
    end
  end
end
