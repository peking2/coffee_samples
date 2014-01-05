{p} = require '../util'
PrototypeModule = require '../prototype_module'

a = PrototypeModule.create 'Tom', 21
p a.getName()
p a.getAge()

