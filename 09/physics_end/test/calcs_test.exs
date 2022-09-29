defmodule CalcsTest do
  use ExUnit.Case


  test "cubing" do
    val = 3 |> Calcs.cubed
    assert val == 27
  end

  test "squaring" do
    val = 5654987423 |> Calcs.squared
    assert val == 31978882754288180929
  end

  test "square root" do
    val = 66445577 |> Calcs.square_root
    assert val == 8151.415643923453
  end

end
