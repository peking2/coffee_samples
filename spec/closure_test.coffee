{p} = require '../util'
ClosureModule = require '../closure_module'

a = ClosureModule.create 'Tom', 21

p a.getName()
p a.getAge()

a.setName 'Mike'
a.setAge '31'
p a.getName()
p a.getAge()
