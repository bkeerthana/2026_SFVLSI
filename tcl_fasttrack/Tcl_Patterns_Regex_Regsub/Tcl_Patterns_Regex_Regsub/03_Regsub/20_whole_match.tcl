# Use the full match in a replacement
# Run: tclsh 20_whole_match.tcl
# & inserts the entire matched text into the replacement.

set line "U1 and U25"
puts [regsub -all {U[0-9]+} $line {<&>}]

# EXPECTED OUTPUT
# <U1> and <U25>

# ACTIVITY
# Wrap every number in parentheses using &.
# Write your solution below.
