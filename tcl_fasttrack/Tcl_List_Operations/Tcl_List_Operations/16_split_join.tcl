# Convert between text and lists
# Run: tclsh 16_split_join.tcl
# split treats each character in its delimiter argument as a separator; it is not a CSV parser.

set text "clk,reset,enable,data"
set signals [split $text ,]
puts "List: $signals"
puts "Count: [llength $signals]"
puts "Readable: [join $signals {, }]"

# EXPECTED OUTPUT
# List: clk reset enable data
# Count: 4
# Readable: clk, reset, enable, data

# ACTIVITY
# Split alu.v;top.v;mux.v at semicolons and join using a comma and space.
# Write your solution below, then run this script again.
