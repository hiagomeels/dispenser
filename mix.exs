defmodule Dispenser.Mixfile do
  use Mix.Project

  def project do
    [app: :dispenser,
     version: "0.0.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: [
       maintainers: ["Hiago Luan"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/hiagomeels/dispenser",}
     ],
     description: """
     Dispenser - Storing all your soap
     """
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:httpoison, "~> 0.10.0"}]
  end
end
