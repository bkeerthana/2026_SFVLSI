# Normalize whitespace
# Run: tclsh 17_whitespace.tcl
# [[:space:]]+ matches a run of whitespace. string trim removes surrounding whitespace.

set line "  U1	  AND2    12  "
set clean [string trim [regsub -all {[[:space:]]+} $line { }]]
puts $clean

# EXPECTED OUTPUT
# U1 AND2 12

# ACTIVITY
# Normalize a report row containing tabs and multiple spaces.
# Write your solution below.
