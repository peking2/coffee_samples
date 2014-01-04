OOModule1 = require './oo_module1'
OOModule2 = require './oo_module2'
FuncModule = require './func_module'
Util = require './util'
p = Util.p

demo_constants = ->
  p "\ndemo_constants"
  p Util.PI
  # PI is readonly, so modification won't work
  Util.PI = 5
  p Util.PI

demo_func = ->
  p "\ndemo_func"
  a = FuncModule.create 'Tom', 21
  p FuncModule.getName a
  p FuncModule.getAge a

# Looks like OO style is more convenient for callers
demo_oo1 = ->
  p "\ndemo_oo1"
  a = OOModule1.create 'Tom', 21
  p a.getName()
  p a.getAge()

  p "\nmembers are public"
  p a._name

  p "\nmethod override"
  a.getName = -> @_name + ":" + @_age
  p a.getName()
  p a.__proto__.getName.call a

demo_oo2 = ->
  p "\ndemo_oo2"
  a = OOModule2.create 'Tom', 21

  p a.getName()
  p a.getAge()

  p "\nset properties"
  a.setName 'Mike'
  a.setAge '31'
  p a.getName()
  p a.getAge()


do demo_constants
do demo_func
do demo_oo1
do demo_oo2

