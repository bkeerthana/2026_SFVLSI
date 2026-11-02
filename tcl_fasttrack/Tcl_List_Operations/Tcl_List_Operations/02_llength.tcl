# Count elements
# Run: tclsh 02_llength.tcl
# llength counts elements, not characters.

set signals {clk reset enable data}
puts "Signal count: [llength $signals]"
puts "Empty list length: [llength {}]"

# EXPECTED OUTPUT
# Signal count: 4
# Empty list length: 0

# ACTIVITY
# Create a list of five modules and display its length.
# Write your solution below, then run this script again.
