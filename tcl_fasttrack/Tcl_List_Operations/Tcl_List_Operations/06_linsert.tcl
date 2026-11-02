# Insert elements
# Run: tclsh 06_linsert.tcl
# linsert returns a new list; assign it to keep the change.

set signals {clk data}
set updated [linsert $signals 1 reset enable]
puts "Original: $signals"
puts "Updated: $updated"

# EXPECTED OUTPUT
# Original: clk data
# Updated: clk reset enable data

# ACTIVITY
# Insert start at the beginning and done at the end of a list.
# Write your solution below, then run this script again.
