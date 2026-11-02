# Match lines in a multiline string
# Run: tclsh 14_line_mode.tcl
# -line makes ^ and $ work at line boundaries. -nocase ignores case.

set report "INFO: Started
WARNING: High area
error: Negative slack
INFO: Done"
set issues [regexp -all -inline -line -nocase {^(?:WARNING|ERROR):[^
]*$} $report]
foreach issue $issues {puts $issue}

# EXPECTED OUTPUT
# WARNING: High area
# error: Negative slack

# ACTIVITY
# Count warning lines separately from error lines.
# Write your solution below.
