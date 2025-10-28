
function __pycalc_plugin {
  local expr="$*"
  [[ -z "$expr" ]] && return

  python - <<EOF
from math import *
print(${expr})
EOF
}

aliases[calc]='noglob __pycalc_plugin'
aliases[=]='noglob __pycalc_plugin'

