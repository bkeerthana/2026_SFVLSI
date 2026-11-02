# Replace a range
# Run: tclsh 08_lreplace.tcl
# lreplace returns a list; both range endpoints are included.

set signals {clk reset enable data done}
set signals [lreplace $signals 1 2 rst_n valid]
puts $signals

# EXPECTED OUTPUT
# clk rst_n valid data done

# ACTIVITY
# Replace two middle elements with one new element.
# Write your solution below, then run this script again.
