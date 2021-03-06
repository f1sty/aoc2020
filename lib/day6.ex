defmodule Aoc2020.Day6 do
  @moduledoc false

  def part_one(input) do
    input
    |> String.split("\n\n", trim: true)
    |> Enum.map(fn group ->
      group
      |> String.replace("\n", "")
      |> String.graphemes()
      |> MapSet.new()
      |> MapSet.size()
    end)
    |> Enum.sum()
  end

  def part_two(input) do
    input
    |> String.split("\n\n", trim: true)
    |> Enum.map(fn group ->
      members = String.split(group, "\n", trim: true) |> length()
      group
      |> String.replace("\n", "")
      |> String.graphemes()
      |> Enum.frequencies()
      |> Enum.count(fn {_letter, repeats} -> repeats == members end)
    end)
    |> Enum.sum()
  end
end
