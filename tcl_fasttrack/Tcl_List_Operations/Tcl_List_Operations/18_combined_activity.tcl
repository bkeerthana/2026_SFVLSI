# Combine list operations
# Run: tclsh 18_combined_activity.tcl
# When removing a searched item, check that its index is >= 0 before using lreplace.

set sources {top.v counter.v alu.v top.v}
lappend sources register.v
set sources [lsort -unique $sources]
puts "Source count: [llength $sources]"
foreach source $sources {
    puts "Source: $source"
}
if {[lsearch -exact $sources top.v] >= 0} {
    puts "Top module file is present"
}

# EXPECTED OUTPUT
# Source count: 4
# Source: alu.v
# Source: counter.v
# Source: register.v
# Source: top.v
# Top module file is present

# ACTIVITY
# Add mux.v, remove alu.v if present, and print the final sorted list and count.
# Write your solution below, then run this script again.
