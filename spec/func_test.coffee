{p} = require '../util'
FuncModule = require '../func_module'

a = FuncModule.create 'Tom', 21
p FuncModule.getName a
p FuncModule.getAge a