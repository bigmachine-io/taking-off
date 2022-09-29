defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 0 #what should this value be?
  end

  test "escape velocity of planet X is correct" do
    planet_x = %{mass: 4.0e22, radius: 6.21e6}
    ev =  planet_x |> Physics.Rocketry.escape_velocity
    #use assert here
  end

  test "Converting to to_light_seconds" do
    Converter.to_light_seconds({:miles, 1000}, precision: 5) |> IO.inspect 
    #assert ... what exactly?
  end

end
