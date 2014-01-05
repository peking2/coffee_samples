# this is to demo constructor pattern
_Super = (name, age) ->
  this._name = name
  this._age = age

_Super.prototype.getName = -> @_name
_Super.prototype.getAge = -> @_age

# factory method to create new object
create = (name, age)->
  new _Super name, age

# export public interface
module.exports = {create}