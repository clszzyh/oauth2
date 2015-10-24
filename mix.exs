defmodule OAuth2.Mixfile do
  use Mix.Project

  def project do
    [app: :oauth2,
     version: "0.3.0",
     elixir: "~> 1.0",
     deps: deps,
     package: package,
     elixirc_paths: elixirc_paths(Mix.env),
     name: "OAuth2",
     description: "An Elixir OAuth 2.0 Client Library",
     source_url: "https://github.com/scrogson/oauth2",
     homepage_url: "https://github.com/scrogson/oauth2",
     test_coverage: [tool: ExCoveralls]]
  end

  def application do
    [applications: [:httpoison, :poison, :plug]]
  end

  defp deps do
    [{:httpoison, "~> 0.7"},
     {:poison, "~> 1.3"},
     {:plug, "~> 1.0"},

     # Test dependencies
     {:cowboy, "~> 1.0"},
     {:excoveralls, "~> 0.3", only: :test},

     # Docs dependencies
     {:earmark, "~> 0.1", only: :docs},
     {:ex_doc, "~> 0.8", only: :docs}]
  end

  defp package do
    [contributors: ["Sonny Scroggin"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/scrogson/oauth2"}]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
