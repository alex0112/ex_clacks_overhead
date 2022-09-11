defmodule ExClacksOverhead.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_clacks_overhead,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/alex0112/ex_clacks_overhead",
      description: description(),
      package: package()
    ]
  end

  defp description do
    "No one is dead while their name is still spoken."
  end

  defp package do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "ex_clacks_overhead",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/alex0112/ex_clacks_overhead"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
