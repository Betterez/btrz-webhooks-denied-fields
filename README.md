# btrz-webhooks-denied-fields
:no_entry: Denied fields for the webhooks emitters libraries.

## Managing denied fields
All the denied fields are in `priv/denied-fields.json`.
The keys are the webhooks and the values contain the denied fields.
The webhooks can be set by event name like `transaction.created` or you can affect more than one event using wildcards like `*` (all the webhooks) or `transaction.*` (all the webhooks starting with `transaction.`).

## How to use

### Elixir
Install...
```elixir
def deps do
  [{:btrz_webhooks_denied_fields, "~> 0.1.1"}]
end
```
and get the fields
```elixir
BtrzWebhooksDeniedFields.get_fields()
```

### NodeJS
Install...
```javascript
"dependencies": {
  "btrz-webhooks-denied-fields": "git+ssh://git@github.com/Betterez/btrz-webhooks-denied-fields.git#master"
}
```
and get the fields
```javascript
const deniedFields = require("btrz-webhooks-denied-fields").getFields();
```