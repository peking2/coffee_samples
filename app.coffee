OOModule = require './oo_module'
FuncModule = require './func_module'
Util = require './util'
p = Util.p

demo_constants = ->
  p 'demo_constants'
  p Util.PI
  # PI is readonly, so modification won't work
  Util.PI = 5
  p Util.PI

# Looks like OO style is more convenient for callers
demo_oo = ->
  p 'demo_oo'
  a = OOModule.create 'Tom', 21
  p a.getName()
  p a.getAge()

demo_func = ->
  p 'demo_func'
  a = FuncModule.create 'Tom', 21
  p FuncModule.getName a
  p FuncModule.getAge a

do demo_constants
do demo_oo
do demo_func

