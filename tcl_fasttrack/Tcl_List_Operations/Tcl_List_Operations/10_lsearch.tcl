# Search for an element
# Run: tclsh 10_lsearch.tcl
# lsearch returns -1 when no match exists. Use -exact for literal equality.

set sources {counter.v register.v top.v}
set index [lsearch -exact $sources top.v]
puts "top.v index: $index"
set missing [lsearch -exact $sources alu.v]
puts "alu.v index: $missing"
if {$missing == -1} {
    puts "alu.v is absent"
}

# EXPECTED OUTPUT
# top.v index: 2
# alu.v index: -1
# alu.v is absent

# ACTIVITY
# Check whether reset occurs in a signal list and print a meaningful message.
# Write your solution below, then run this script again.
