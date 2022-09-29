defmodule Solar do

  def power(%{classification: :M, scale: s, stations: _c}),
    do: s * 10
  def power(%{classification: :X, scale: s, stations: c}) when c < 5,
    do: s * 1000 * 0.9
  def power(%{classification: :X, scale: s, stations: c}) when c >= 5,
    do: s * 1000
  def power(%{classification: :C, scale: s, stations: _c}),
    do: s



  def no_eva(flares) do
    Enum.filter flares, fn(flare) ->
      power(flare) > 1000
    end
  end

  def deadliest(flares) do
    Enum.map(flares, &(power(&1)))
      |> Enum.max
  end

  def total_flare_power(list)  do
    total_flare_power(list, 0)
  end

  def total_flare_power([], total),  do: total

  def total_flare_power([%{classification: :M, scale: s} | tail], total) do
    new_total = s * 10 * 0.92 + total
    total_flare_power(tail, new_total)
  end

  def total_flare_power([%{classification: :C, scale: s} | tail], total) do
    new_total = s * 0.78 + total
    total_flare_power(tail, new_total)
  end

  def total_flare_power([%{classification: :X, scale: s} | tail], total) do
    new_total = s * 1000 * 0.68 + total
    total_flare_power(tail, new_total)
  end

  def total_flare_power_enum(flares) do
    Enum.reduce flares, 0, fn(flare, total) ->
      power(flare) + total
    end
  end

  def flare_list(flares) do

    for flare <- flares,
      power <- [power(flare)],
      is_deadly <- [power > 1000],
      do: %{power: power, is_deadly: is_deadly}

  end

  def flare_list_enums(flares) do

    Enum.map flares, fn(flare) ->
      p = power(flare)
      %{power: p, is_deadly: p > 1000}
    end

  end
end
