defmodule BtrzWebhooksDeniedFields.MixProject do
  use Mix.Project

  @github_url "https://github.com/Betterez/btrz_webhooks_denied_fields"
  @version "0.1.4"

  def project do
    [
      app: :btrz_webhooks_denied_fields,
      version: @version,
      name: "BtrzWebhooksDeniedFields",
      description: "Denied fields for Betterez webhooks",
      source_url: @github_url,
      homepage_url: @github_url,
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
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
      {:excoveralls, "~> 0.8", only: :test},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "BtrzWebhooksDeniedFields",
      source_ref: "v#{@version}",
      source_url: @github_url,
      extras: ["README.md"]
    ]
  end

  defp package do
    %{
      name: "btrz_webhooks_denied_fields",
      licenses: ["MIT"],
      maintainers: ["Hernán García", "Pablo Brudnick"],
      links: %{"GitHub" => @github_url}
    }
  end
end
