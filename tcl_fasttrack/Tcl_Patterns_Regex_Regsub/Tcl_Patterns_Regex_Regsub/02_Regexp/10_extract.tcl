# Extract captured values
# Run: tclsh 10_extract.tcl
# Parentheses capture subexpressions. Output variables hold the full match and each captured value.

set line "Cell count: 1250"
if {[regexp {Cell count:[[:space:]]*([0-9]+)} $line full count]} {
    puts "Full match: $full"
    puts "Count: $count"
} else {
    puts "No count found"
}

# EXPECTED OUTPUT
# Full match: Cell count: 1250
# Count: 1250

# ACTIVITY
# Extract the number from Area: 450.
# Write your solution below.
