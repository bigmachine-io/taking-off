defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "Converter one works" do
    Converter.to_light_seconds({:miles, 1000}, precision: 5) |> IO.inspect 
    #assert ... what exactly?
  end

  test "ConverterTwo works" do
    ConverterTwo.to_light_seconds({:miles, 1000}, precision: 5) |> IO.inspect 
  end

  test "ConverterTwo works with default values" do
    ConverterTwo.to_light_seconds({:miles, 1000}) |> IO.inspect 
  end
end
