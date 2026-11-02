# Use nested lists
# Run: tclsh 17_nested_lists.tcl
# Each outer element is itself a list. lassign assigns row values to named variables.

set cells [list [list U1 AND2 12] [list U2 OR2 15]]
puts "First row: [lindex $cells 0]"
puts "First cell name: [lindex $cells 0 0]"
puts "Second cell area: [lindex $cells 1 2]"
foreach row $cells {
    lassign $row instance type area
    puts "$instance uses $type with area $area"
}

# EXPECTED OUTPUT
# First row: U1 AND2 12
# First cell name: U1
# Second cell area: 15
# U1 uses AND2 with area 12
# U2 uses OR2 with area 15

# ACTIVITY
# Add a third row for U3 NAND2 with area 10 and print its type.
# Write your solution below, then run this script again.
