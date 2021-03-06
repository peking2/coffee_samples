# this is to demo closure pattern

# define methods so all instances share them
_getName = -> @name
_getAge = -> @age
_setName = (x) -> @name = x
_setAge = (x) -> @age = x

# factory method to create new instance
create = (name, age)->
  # private data, accessible in closures
  self =
    name: name
    age: age

  # compsition over inheritance
  getName: _getName.bind self
  getAge: _getAge.bind self
  setName: _setName.bind self
  setAge: _setAge.bind self

# export public interface
module.exports = {create}