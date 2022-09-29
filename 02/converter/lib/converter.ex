defmodule Converter do
  def miles_to_meters({:miles, miles}) when is_integer(miles) do
    {:meters, miles * 1609.34}
  end

  def to_light_seconds({:meters, meters}) when is_float(meters) or is_integer(meters) do
    meters * 299_792_458
  end

  def to_light_seconds({:miles, miles}) when is_integer(miles) do
    {:miles, miles}
    |> miles_to_meters
    |> to_light_seconds
  end

  # the trunc function will 'truncate' a value, turning it from a Float to an integer
  def round_up(val) when is_float(val), do: trunc(val)
end
