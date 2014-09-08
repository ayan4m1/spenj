fs = require 'fs'
spenj = require '../lib/spenj'

describe 'stats', ->
  it 'should exist', ->
    expect(spenj.stats).toBeDefined()

  it 'should have a blockFrequency method', ->
    expect(spenj.stats.blockFrequency).toBeDefined()

  describe '.blockFrequency', ->
    it 'should produce a frequency distribution of blocks', ->
      prefab = spenj.parser fs.readFileSync("#{__dirname}/prefabs/Trade2.sbc")
      freq = spenj.stats.blockFrequency(prefab)
      expect(freq).toBeDefined()
      expect(Object.keys(freq).length).toBeGreaterThan(0)