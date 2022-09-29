defmodule ConverterTest do
  use ExUnit.Case

  test "to_light_seconds returns ... something" do
    Converter.to_light_seconds({:miles, 1000}, precision: 5) |> IO.inspect 
    #assert ... what exactly?
  end

end
