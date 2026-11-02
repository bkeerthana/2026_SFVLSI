# Replace one element
# Run: tclsh 07_lset.tcl
# lset changes a variable directly and uses zero-based indexes.

set sources {counter.v register.v top.v}
lset sources 1 register_updated.v
puts $sources

# EXPECTED OUTPUT
# counter.v register_updated.v top.v

# ACTIVITY
# Replace the last source filename with chip_top.v.
# Write your solution below, then run this script again.
