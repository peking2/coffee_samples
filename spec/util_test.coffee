Util = require '../util'

Util.p "\ndemo_constants"
Util.p Util.PI
# PI is readonly, so modification won't work
Util.PI = 5
Util.p Util.PI
