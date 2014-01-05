# this is to demo functional pattern

# factory method to create new object
create = (name, age)->
  _name: name
  _age: age

getName = (obj) -> obj._name
getAge = (obj) -> obj._age

# export public interface
module.exports = {create, getName, getAge}