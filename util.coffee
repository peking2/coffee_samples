# global functions can be defined in a module
# It's like static class or singleton class

p = (x) -> console.log x

module.exports = {p}

# define constants
# PI is read only
Object.defineProperty module.exports, 'PI', {value: 3.141593}