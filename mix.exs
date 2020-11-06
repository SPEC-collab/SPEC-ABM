defmodule SPECabm.MixProject do
  use Mix.Project

  def project do
    [
      app: :specabm,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Documentation
      name: "SPECabm",
      authors: ["SPEC team"],
      source_url: "https://github.com/SPEC-collab/SPEC-ABM",
      homepage_url: "http://wiki.spec-abm.site/wiki/Main_Page",
      docs: [main: "SPECabm", # The main page in the docs
          logo: "assets/logo.png",
          extras: ["README.md"]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SPECabm.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:horde, "~> 0.7.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
