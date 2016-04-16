defmodule PhysicsTest do
  use ExUnit.Case

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 11.2 #what should this value be?
  end

  test "escape velocity of mars is correct" do
    ev = Physics.Rocketry.escape_velocity(:mars)
    assert ev == 5.0 #what should this value be?
  end

  test "escape velocity of moon is correct" do
    ev = Physics.Rocketry.escape_velocity(:moon)
    assert ev == 2.4 #what should this value be?
  end

  test "escape velocity of planet X is correct" do
    ev =  %{mass: 4.0e22, radius: 6.21e6} |> Physics.Rocketry.escape_velocity
    assert ev == 0.9
    #use assert here
  end

  test "Converting to to_light_seconds" do
    ls = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert ls == 0.00537
  end

  test "Converter one works" do
    ls = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert ls == 0.00537
  end

  test "ConverterTwo works" do
    ls = ConverterTwo.to_light_seconds({:miles, 1000}, precision: 5)
    assert ls == 0.00537
  end

  test "ConverterTwo works with default values" do
    ls = ConverterTwo.to_light_seconds({:miles, 1000})
    assert ls == 0.00537
  end
end
