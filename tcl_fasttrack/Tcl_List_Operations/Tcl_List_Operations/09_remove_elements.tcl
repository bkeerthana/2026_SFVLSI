# Remove elements
# Run: tclsh 09_remove_elements.tcl
# lreplace with no replacement arguments deletes the selected range.

set signals {clk reset enable data}
set signals [lreplace $signals 1 1]
puts "After removal: $signals"
set signals [lreplace $signals end end]
puts "After removing last: $signals"

# EXPECTED OUTPUT
# After removal: clk enable data
# After removing last: clk enable

# ACTIVITY
# Remove the first element, then remove two adjacent elements.
# Write your solution below, then run this script again.
