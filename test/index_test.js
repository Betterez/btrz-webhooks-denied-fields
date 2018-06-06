"use strict";
const deniedFields = require("../"),
  expect = require("chai").expect;

describe("getFields()", () => {
  it("should return the json object", () => {
    const fields = deniedFields.getFields();
    expect(require("../denied-fields.json")).to.be.eql(fields);
  });
});