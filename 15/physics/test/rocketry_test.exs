defmodule RocketryTest do
  use ExUnit.Case
  import Physics.Rocketry

  test "Orbital acceleration defaults to Earth" do
    x = orbital_acceleration(100)
    assert x == 9.515619587729839
  end

  test "Orbital term at 100km" do
    x = orbital_term(100)
    assert x == 1.4
  end

  @tag :pending
  test "Orbital acceleration for Jupiter at 100km" do
    #assert x == 24.670096337229204
  end

  @tag :pending
  test "Orbital term at 100km for Saturn at 6000km" do
    #assert x == 4.9
  end

end
