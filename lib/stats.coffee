'use strict';

module.exports =
  blockFrequency: (prefab) ->
    blocks = prefab.find('//Prefab//CubeGrid//CubeBlocks//SubtypeName')
    freq = {}
    for block in blocks
      name = block.text()
      continue if name is ''
      if freq[name]? then freq[name]++ else freq[name] = 1
    freq