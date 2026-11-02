# Combined timing check
# Run: tclsh 18_combined_lab.tcl
# Combine foreach, if/else and counters. Values are illustrative, not tool commands.

set results {{counter 0.2} {alu -0.1} {mux 0.0}}
set passed 0
set failed 0
foreach row $results {
    lassign $row design slack
    if {$slack >= 0} {
        puts "${design}: PASS"
        incr passed
    } else {
        puts "${design}: FAIL"
        incr failed
    }
}
puts "Passed: $passed"
puts "Failed: $failed"

# EXPECTED OUTPUT
# counter: PASS
# alu: FAIL
# mux: PASS
# Passed: 2
# Failed: 1

# ACTIVITY
# Add two designs. Store failed design names in a list with lappend and display that list.
# Add your solution below.
