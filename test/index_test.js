const {describe, it} = require("node:test");
const assert = require("node:assert/strict");
const deniedFields = require("../");

describe("getFields()", () => {
  it("should return the json object", () => {
    const fields = deniedFields.getFields();
    assert.deepStrictEqual(require("../priv/denied-fields.json"), fields);
  });
});