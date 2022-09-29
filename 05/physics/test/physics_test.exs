defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "escape velocity of earth is correct" do
    #notice how you can pipe directly to IO.inspect? And still get the value returned...
    ev = Physics.Rocketry.escape_velocity(:earth) |> IO.inspect
    assert ev == 0 #what should this value be?
  end
  test "escape velocity of planet X is correct" do
    planet_x = %{mass: 4.0e22, radius: 6.21e6}
    planet_x |> Physics.Rocketry.escape_velocity |> IO.inspect
    #use assert here
  end
end
