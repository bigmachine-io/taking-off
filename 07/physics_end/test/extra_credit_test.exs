defmodule ExtraCreditTests do
  use ExUnit.Case


  test "the moon's orbital velocity" do
    ev = Physics.Rocketry.escape_velocity(:moon)
    assert ev == 0 #what should this value be?
  end

  test "mars orbital velocity" do
    ev = Physics.Rocketry.escape_velocity(:mars)
    assert ev == 0 #what should this value be?
  end

  test "defaulting orbital velocity calc to use earth" do
    ev = Physics.Rocketry.escape_velocity
    assert ev == 0 #what should this value be?
  end

  test "orbital term of 4 hours" do
    # it's all you!
  end

end
