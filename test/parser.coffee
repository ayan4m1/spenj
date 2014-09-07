spenj = require '../lib/spenj'

describe 'parser', ->
  it 'should exist', ->
    expect(spenj.parser).toBeDefined()

  it 'should have a parse method', ->
    expect(spenj.parser.parse).toBeDefined()