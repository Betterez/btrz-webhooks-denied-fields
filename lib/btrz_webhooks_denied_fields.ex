defmodule BtrzWebhooksDeniedFields do
  @moduledoc """
  Documentation for BtrzWebhooksDeniedFields.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BtrzWebhooksDeniedFields.hello
      :world

  """
  def get_fields do
    File.read!("../denied-fields.json") |> Poison.decode!()
  end
end
