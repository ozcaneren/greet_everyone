defmodule GreetEveryone.MixProject do
  use Mix.Project

  def project do
    [
      app: :greet_everyone,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [{:earmark, "~> 1.4", only: :dev},
    {:ex_doc, "~> 0.11", only: :dev}]
  end
end
