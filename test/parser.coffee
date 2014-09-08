fs = require 'fs'
spenj = require '../lib/spenj'

describe 'parser', ->
  it 'should exist', ->
    expect(spenj.parser).toBeDefined()

  it 'should parse a valid prefab', ->
    prefab = spenj.parser(fs.readFileSync("#{__dirname}/prefabs/Trade2.sbc"))
    expect(prefab.length).toBeUndefined()
    expect(prefab.errors).toBeDefined()
    expect(prefab.errors.length).toBe(0)

  it 'should return error information for an invalid prefab', ->
    prefab = spenj.parser(fs.readFileSync("#{__dirname}/prefabs/Invalid.sbc"))
    expect(prefab).toBeDefined()
    expect(prefab.errors).toBeUndefined()