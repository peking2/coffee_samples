# this is to demo errors

{p} = require './util'

asyncFunc = (input, callback) ->
  return callback new Error('invalid input') unless input?
  callback null, input

syncFunc = (input) ->
  input or new Error 'invalid input'


p "\ndemo_async_errors"

asyncFunc null, (err, res) ->
  return p err if err?
  p res

asyncFunc 'groupon', (err, res) ->
  return p err if err?
  p res

p "\ndemo_sync_errors"

res = syncFunc null
if res instanceof Error
  p "sync_func returned error [#{res}]"
else
  p res

res = syncFunc 'groupon'
if res instanceof Error
  p "sync_func returned error [#{res}]"
else
  p res

