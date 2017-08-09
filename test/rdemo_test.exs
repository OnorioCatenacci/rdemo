defmodule RdemoTest do
  use ExUnit.Case
  doctest Rdemo

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Call to rustler NIF works as expected" do
    assert {:ok,2} == Rdemo.add(1,1)
  end

  test "Call to rustler NIF multiply works as expected" do
    assert {:ok,4} == Rdemo.mult(2,2)
  end
end
