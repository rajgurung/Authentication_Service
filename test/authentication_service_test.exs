defmodule AuthenticationServiceTest do
  use ExUnit.Case
  doctest AuthenticationService

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "" do
    assert AuthenticationService.message() == :ok
  end
end
