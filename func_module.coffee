# factory method to create new object
create = (name, age)->
  name: name
  age: age

getName = (obj) -> obj.name
getAge = (obj) -> obj.age

# export public interface
module.exports = {create, getName, getAge}