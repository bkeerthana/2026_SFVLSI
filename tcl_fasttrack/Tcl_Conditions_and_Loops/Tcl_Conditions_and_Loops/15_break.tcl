# Exit a loop with break
# Run: tclsh 15_break.tcl
# break exits the innermost loop immediately.

set sources {counter.v top.v alu.v}
foreach source $sources {
    puts "Checking $source"
    if {$source eq "top.v"} {
        puts "Found top.v; stopping search"
        break
    }
}

# EXPECTED OUTPUT
# Checking counter.v
# Checking top.v
# Found top.v; stopping search

# ACTIVITY
# Search for alu.v instead. Add a flag to report when a filename is absent.
# Add your solution below.
