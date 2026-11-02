# Create lists
# Run: tclsh 01_create_list.tcl
# Use list when constructing a list from variable values.

set sources {counter.v register.v top.v}
puts $sources
set name "clock divider.v"
set sources [list counter.v $name top.v]
puts $sources

# EXPECTED OUTPUT
# counter.v register.v top.v
# counter.v {clock divider.v} top.v

# ACTIVITY
# Create a list containing alu.v, mux.v and a filename with a space.
# Write your solution below, then run this script again.
