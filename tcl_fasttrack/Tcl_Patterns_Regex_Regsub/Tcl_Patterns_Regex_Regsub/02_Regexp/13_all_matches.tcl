# Find all matches
# Run: tclsh 13_all_matches.tcl
# -all -inline returns matching text as a list. No captures are used here, so each element is a full match.

set report "U1 U25 U300"
set cells [regexp -all -inline {U[0-9]+} $report]
puts "Cells: $cells"
puts "Count: [llength $cells]"

# EXPECTED OUTPUT
# Cells: U1 U25 U300
# Count: 3

# ACTIVITY
# Extract every integer from the string Area=120 Cells=50 Errors=0.
# Write your solution below.
