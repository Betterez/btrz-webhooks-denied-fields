# btrz-webhooks-denied-fields
:no_entry: Denied fields for the webhooks emitters libraries.

## How to use

### Elixir
Install...
```elixir
def deps do
  [
    {:btrz_webhooks_denied_fields, git: "git://github.com/Betterez/btrz-webhooks-denied-fields.git"}
  ]
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