'use strict';

libxmljs = require 'libxmljs'

module.exports = (xml) ->
  try
    prefab = libxmljs.parseXml(xml)
  catch err
    return err

  prefab