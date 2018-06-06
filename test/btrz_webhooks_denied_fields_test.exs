defmodule BtrzWebhooksDeniedFieldsTest do
  use ExUnit.Case

  test "get_fields() will return the json decoded" do
    fields_json =
      Path.join(:code.priv_dir(:btrz_webhooks_denied_fields), "denied-fields.json")
      |> File.read!()
      |> Poison.decode!()

    assert BtrzWebhooksDeniedFields.get_fields() == fields_json
  end
end
