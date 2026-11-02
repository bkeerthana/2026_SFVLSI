# Remove duplicates
# Run: tclsh 13_unique_elements.tcl
# lsort -unique also sorts the result; original order is not preserved.

set sources {top.v counter.v top.v alu.v counter.v}
set unique [lsort -unique $sources]
puts "Original: $sources"
puts "Unique and sorted: $unique"

# EXPECTED OUTPUT
# Original: top.v counter.v top.v alu.v counter.v
# Unique and sorted: alu.v counter.v top.v

# ACTIVITY
# Remove duplicates from a list of signal names.
# Write your solution below, then run this script again.
