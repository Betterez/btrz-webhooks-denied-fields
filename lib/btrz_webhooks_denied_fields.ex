defmodule BtrzWebhooksDeniedFields do
  @moduledoc """
  Documentation for BtrzWebhooksDeniedFields.
  """

  @doc """
  Get the denied fields.

  ## Examples

      iex> BtrzWebhooksDeniedFields.get_fields()
      %{"*" => ["password", "credentials"]}

  """
  def get_fields do
    Path.join(:code.priv_dir(:btrz_webhooks_denied_fields), "denied-fields.json")
    |> File.read!()
    |> Poison.decode!()
  end
end
