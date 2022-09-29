defmodule CalcsTest do
  use ExUnit.Case


  test "cubing" do
    val = 3 |> Calcs.cubed
    assert val == 9 #hey wait a minute!
  end

  test "squaring" do
    val = 5654987423 |> Calcs.squared
    assert val == "derp!" #A little help?
  end

  test "square root" do
    val = 66445577 |> Calcs.square_root
    assert val == 9292 # I could swear... man I'm so getting fired
  end

end
