defmodule ConverterTest do
  use ExUnit.Case

  test "meters convert to miles" do
    Converter.to_light_seconds({:miles, 4})
      |> IO.inspect
  end
end
