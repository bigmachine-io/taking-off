defmodule ArgumentErrorTest do
  use ExUnit.Case 

  def say_hello(name, opts) do
    "Hello #{name}, I see that you're #{opts[:age]} years old"
  end

  test "a non-compiling Erlang error" do
    val = say_hello "Steve", age: 12
    assert length(val) > 10
  end
end