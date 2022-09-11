# X-Clacks-Overhead

> "We keep that name moving in the Overhead," he said, and it seemed to Princess that the wind in the shutter arrays above her blew more forlornly, and the everlasting clicking of the shutters grew more urgent. "He'd never have wanted to go home. He was a real linesman. His name is in the code, in the wind, in the rigging, and the shutters. Haven't you ever heard the saying 'Man's not dead while his name is still spoken'?"
>
> -- Terry Pratchett. “Going Postal”

## Installation
This package is [available in Hex](https://hex.pm/packages/ex_clacks_overhead/0.1.0) (the package repository, not the university's thinking engine), and can be installed
by adding `ex_clacks_overhead` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_clacks_overhead, "~> 0.1.0"}
  ]
end
```

## Usage
Add the line `plug GNU, names: [...]` to a pipeline like so:

```elixir
defmodule MyAppWeb.Router do
  use MyAppWeb, :router

  alias Kepler.Plugs.GNU

  pipeline :... do
    plug GNU, names: ["Terry Pratchett"]
  end

...
end
```

Your HTTP responses on that pipeline should now include the name you specified:
```
$ http --headers get http://your-app.example.com
HTTP/1.1 200 OK
cache-control: max-age=0, private, must-revalidate
content-length: ...
content-type: text/html; charset=utf-8
cross-origin-window-policy: deny
date: Sun, 11 Sep 2022 08:22:29 GMT
server: Cowboy
set-cookie: ...
x-clacks-overhead: GNU Terry Pratchett
...
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/ex_clacks_overhead>.

