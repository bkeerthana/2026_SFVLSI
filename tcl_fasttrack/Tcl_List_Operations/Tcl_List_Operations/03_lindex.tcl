# Access elements
# Run: tclsh 03_lindex.tcl
# Indexes start at zero; end-1 means the second-last index.

set sources {counter.v register.v top.v}
puts "First: [lindex $sources 0]"
puts "Second: [lindex $sources 1]"
puts "Last: [lindex $sources end]"

# EXPECTED OUTPUT
# First: counter.v
# Second: register.v
# Last: top.v

# ACTIVITY
# Print the second-last element of a four-element list.
# Write your solution below, then run this script again.
