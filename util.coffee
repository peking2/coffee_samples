# this is to demo singleton pattern

# global functions can be defined in a module
# It's like static class or singleton class

# private variable
_private_var = 5

# private function
_private_func = ->
  _private_var

# public function
p = (x) -> console.log x

# exports public functions
# interface definition
module.exports = {p}

# define constants
# PI is read only
Object.defineProperty module.exports, 'PI', {value: 3.141593}