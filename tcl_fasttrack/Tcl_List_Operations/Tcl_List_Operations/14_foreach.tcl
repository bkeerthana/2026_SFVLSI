# Iterate over a list
# Run: tclsh 14_foreach.tcl
# foreach assigns each element to the loop variable.

set sources {counter.v register.v top.v}
set number 1
foreach source $sources {
    puts "$number. $source"
    incr number
}

# EXPECTED OUTPUT
# 1. counter.v
# 2. register.v
# 3. top.v

# ACTIVITY
# Print every clock with a numbered label.
# Write your solution below, then run this script again.
