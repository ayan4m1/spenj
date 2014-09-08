fs = require 'fs'
spenj = require '../lib/spenj'

# parse a prefab file
result = spenj.parser fs.readFileSync('./test/prefabs/Trade2.sbc')

# print block frequency information
console.log spenj.stats.blockFrequency(result)