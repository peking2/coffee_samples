OOModule = require './oo_module'
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
demo_oo = ->
  p "\ndemo_oo"
  a = OOModule.create 'Tom', 21
  p a.getName()
  p a.getAge()

  p "\nmembers are public"
  p a._name

  p "\nmethod override"
  a.getName = -> @_name + ":" + @_age
  p a.getName()
  p a.__proto__.getName.call a

do demo_constants
do demo_func
do demo_oo

