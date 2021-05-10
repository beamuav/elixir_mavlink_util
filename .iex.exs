#  Using MAVProxy as a reference, provide helper functions for working with
#  vehicles running APM. Importing the API into an iex session should give
#  an interactive CLI very similar to MAVProxy, using info/warn level log
#  messages for extra feedback. The same API can be called directly from code.

import MAVLink.Util.CacheManager, only: [mavs: 0, params: 0, params: 1, params: 2]
import MAVLink.Util.FocusManager, only: [focus: 0, focus: 1, focus: 2]

