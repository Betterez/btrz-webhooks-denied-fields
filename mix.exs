defmodule BtrzWebhooksDeniedFields.MixProject do
  use Mix.Project

  def project do
    [
      app: :btrz_webhooks_denied_fields,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases do
    [
      test: ["coveralls"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:excoveralls, "~> 0.8", only: :test}
    ]
  end
end
