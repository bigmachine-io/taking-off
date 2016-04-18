defmodule Physics.Mixfile do
  use Mix.Project

  def project do
    [app: :physics,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [:logger, :timex, :ecto, :postgrex],
      mod: {Physics, []}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:timex, "~> 2.1.4"}, 
      {:amnesia, github: "meh/amnesia", tag: :master},  
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 2.0.0-rc.0"}
    ] 
  end
end
