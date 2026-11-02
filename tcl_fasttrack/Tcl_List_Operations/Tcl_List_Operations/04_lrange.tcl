# Extract a range
# Run: tclsh 04_lrange.tcl
# Both start and end indexes are included.

set signals {clk reset enable data_in data_out}
puts "First three: [lrange $signals 0 2]"
puts "From index 2: [lrange $signals 2 end]"

# EXPECTED OUTPUT
# First three: clk reset enable
# From index 2: enable data_in data_out

# ACTIVITY
# Extract reset, enable and data_in using one lrange command.
# Write your solution below, then run this script again.
