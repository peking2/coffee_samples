# define methods
_methods = {}
_methods.getName = -> this._name
_methods.getAge = -> this._age

# factory method to create new instance
create = (name, age)->
  # prototypal inheritance by calling Object.create
  # please ensure only one level inheritance
  self = Object.create _methods
  # priviate members start with underscore, so callers shouldn't use them
  self._name = name
  self._age = age
  self

# export public interface
module.exports = {create}