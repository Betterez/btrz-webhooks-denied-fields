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
    File.read!("./denied-fields.json") |> Poison.decode!()
  end
end
