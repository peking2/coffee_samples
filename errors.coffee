# this is to demo errors

{p} = require './util'

async_func = (input, callback) ->
  return callback new Error('invalid input') unless input?
  callback null, input

sync_func = (input) ->
  input or new Error 'invalid input'


p "\ndemo_async_errors"

async_func null, (err, res) ->
  return p err if err?
  p res

async_func 'groupon', (err, res) ->
  return p err if err?
  p res

p "\ndemo_sync_errors"

res = sync_func null
if res instanceof Error
  p "sync_func returned error [#{res}]"
else
  p res

res = sync_func 'groupon'
if res instanceof Error
  p "sync_func returned error [#{res}]"
else
  p res

