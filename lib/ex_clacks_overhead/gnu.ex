defmodule ExClacksOverhead.GNU do

  import Plug.Conn

  def init(options), do: options

  def call(conn, names: names) do
    try do
      headers =
	names
	|> Enum.map(&gen_header/1)
	
	conn
	|> prepend_resp_headers(headers)
    rescue
      _e -> conn
    end
  end

  def call(conn, _), do: conn

  defp gen_header(name) do
    {"x-clacks-overhead", "GNU #{name}"}
  end

end
