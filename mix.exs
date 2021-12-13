defmodule Dispenser.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dispenser,
      version: "1.0.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: ["Hiago Luan"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/hiagomeels/dispenser"}
      ],
      description: """
      Dispenser - Storing all your soap
      """
    ]
  end

  def application do
    [extra_applications: [:logger, :eex]]
  end

  defp deps do
    [{:httpoison, "~> 1.6.2"}]
  end
end
