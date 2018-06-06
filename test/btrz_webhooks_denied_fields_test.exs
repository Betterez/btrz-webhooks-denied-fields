defmodule BtrzWebhooksDeniedFieldsTest do
  use ExUnit.Case

  test "get_fields() will return the json decoded" do
    fields_json = File.read!("./denied-fields.json") |> Poison.decode!()
    assert BtrzWebhooksDeniedFields.get_fields() == fields_json
  end
end
