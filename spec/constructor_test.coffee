{p} = require '../util'
ConstructorModule = require '../constructor_module'


p "\nCreate an instance"
a = ConstructorModule.create 'Tom', 21
p a.getName()
p a.getAge()

p "\nMembers are accessible"
p a._name
p a._age

