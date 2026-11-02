# Append elements
# Run: tclsh 05_lappend.tcl
# lappend takes a variable NAME and changes that variable.

set sources {counter.v register.v}
lappend sources top.v
lappend sources alu.v mux.v
puts $sources

# EXPECTED OUTPUT
# counter.v register.v top.v alu.v mux.v

# ACTIVITY
# Start with two clocks and append two more clocks.
# Write your solution below, then run this script again.
