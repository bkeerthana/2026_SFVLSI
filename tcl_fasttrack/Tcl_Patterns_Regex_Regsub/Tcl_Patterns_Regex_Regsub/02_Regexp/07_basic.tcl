# Basic regexp
# Run: tclsh 07_basic.tcl
# regexp returns 1 when a match is found and 0 otherwise. By default it can match a substring.

set line "WARNING: Timing violation"
puts "Warning found: [regexp {WARNING} $line]"
puts "Error found: [regexp {ERROR} $line]"

# EXPECTED OUTPUT
# Warning found: 1
# Error found: 0

# ACTIVITY
# Check whether a report line contains Slack.
# Write your solution below.
