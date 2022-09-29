defmodule SolarTest do
  use ExUnit.Case

  setup do
    flares = [
      %{classification: :X, stations: 10, scale: 99, date: Date.from_erl({1859, 8, 29})},
      %{classification: :M, stations: 10, scale: 5.8, date: Date.from_erl({2015, 1, 12})},
      %{classification: :M, stations: 6, scale: 1.2, date: Date.from_erl({2015, 2, 9})},
      %{classification: :C, stations: 6, scale: 3.2, date: Date.from_erl({2015, 4, 18})},
      %{classification: :M, stations: 7, scale: 83.6, date: Date.from_erl({2015, 6, 23})},
      %{classification: :C, stations: 10, scale: 2.5, date: Date.from_erl({2015, 7, 4})},
      %{classification: :X, stations: 2, scale: 72, date: Date.from_erl({2012, 7, 23})},
      %{classification: :X, stations: 4, scale: 45, date: Date.from_erl({2003, 11, 4})},
    ]
    {:ok, data: flares}
  end

  test "We have 8 solar flares", %{data: flares} do
    assert length(flares) == 8
  end

  test "Go inside", %{data: flares} do
    d = Solar.no_eva(flares)
    assert length(d) == 3
  end

  test "total flare power using recursion", %{data: flares} do
    Solar.total_flare_power(flares) |> IO.inspect
  end

  test "total flare power using enums", %{data: flares} do
    Solar.total_flare_power_enum(flares) |> IO.inspect  # Hey! Why is this answer different! Can you adjust this function for me?
  end

  test "a flare list with comprehensions", %{data: flares} do
    Solar.flare_list(flares) |> IO.inspect
  end

  test "a flare list with enums", %{data: flares} do
    Solar.flare_list_enums(flares) |> IO.inspect
  end
end
