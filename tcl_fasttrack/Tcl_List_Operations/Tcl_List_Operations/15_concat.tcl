# Combine lists
# Run: tclsh 15_concat.tcl
# concat combines lists into one list; it does not modify the inputs.

set group_a {counter.v register.v}
set group_b {alu.v top.v}
set sources [concat $group_a $group_b]
puts $sources
puts "Total: [llength $sources]"

# EXPECTED OUTPUT
# counter.v register.v alu.v top.v
# Total: 4

# ACTIVITY
# Combine three source lists and display the total number of files.
# Write your solution below, then run this script again.
