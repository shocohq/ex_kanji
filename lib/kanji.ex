defmodule Kanji do
  @moduledoc """
  漢字かどうかを判定する

  ## Usage

    iex(1)> Kanji.kanji?(?漢)
    true

    iex(2)> Kanji.kanji?(?A)
    false

  ### Reference
  https://tama-san.com/kanji-regex/  
  """

  @doc """
  漢字かどうかを判定する  
  """
  @spec kanji?(char()) :: boolean()
  def kanji?(char)
      when is_integer(char) and
             (char in 0x2E80..0x2FDF or
                char in [?々, ?〇, ?〻] or
                char in 0x3400..0x4DBF or
                char in 0x4E00..0x9FFF or
                char in 0xF900..0xFAFF or
                char in 0x20000..0x2FFFF),
      do: true

  def kanji?(_any), do: false
end
