defmodule ExClacksOverheadTest.GNUTest do
  use ExUnit.Case
  doctest ExClacksOverhead.GNU

  import Plug.Test

  alias ExClacksOverhead.GNU

  describe "init/1" do
    test "returns options unchanged" do
      assert GNU.init(:foo) == :foo
    end

  end

  describe "call/2" do
    test "returns the conn unchanged when no names are provided" do
      conn = conn(:get, "/")

      assert GNU.call(conn, nil) == conn
    end

    test "returns the conn with an x-clacks-overhead header when a single name is provided" do
      conn = conn(:get, "/")
      headers = GNU.call(conn, names: ["Terry Pratchett"]).resp_headers

      assert {"x-clacks-overhead", "GNU Terry Pratchett"} in headers
    end

    test "returns the conn with multiple x-clacks-overhead headers when more than one name is provided" do
      conn = conn(:get, "/")
      headers = GNU.call(conn, names: ["Terry Pratchett", "Aaron Swartz"]).resp_headers

      assert {"x-clacks-overhead", "GNU Terry Pratchett"} in headers
      assert {"x-clacks-overhead", "GNU Aaron Swartz"} in headers
    end
  end

end
