# Case-insensitive matching
# Run: tclsh 04_nocase.tcl
# -nocase ignores letter case.

set filename TOP.V
puts "Default: [string match *.v $filename]"
puts "Ignore case: [string match -nocase *.v $filename]"

# EXPECTED OUTPUT
# Default: 0
# Ignore case: 1

# ACTIVITY
# Check names beginning with clk regardless of letter case.
# Write your solution below.
