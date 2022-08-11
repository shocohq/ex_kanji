# Kanji
[![CI](https://github.com/shocohq/ex_kanji/actions/workflows/ci.yml/badge.svg)](https://github.com/shocohq/ex_kanji/actions/workflows/ci.yml)
[![hex.pm](https://img.shields.io/hexpm/v/kanji)](https://hex.pm/packages/kanji)
[![MIT License](https://img.shields.io/hexpm/l/kanji)](./LICENSE)

Elixir で日本語常用漢字を扱うためのライブラリ (Japanese Kanji library for Elixir)

## Usage

```ex
iex(1)> Kanji.kanji?(?漢)
true

iex(2)> Kanji.kanji?(?あ)
false

iex(3)> Kanji.kanji?(?A)
false
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kanji` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kanji, "~> 0.0.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/kanji>.

