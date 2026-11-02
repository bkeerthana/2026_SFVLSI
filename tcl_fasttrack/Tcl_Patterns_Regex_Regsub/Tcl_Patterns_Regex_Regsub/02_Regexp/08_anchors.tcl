# Start and end anchors
# Run: tclsh 08_anchors.tcl
# ^ marks the start and $ marks the end of the string.

foreach value {123 abc123 123abc} {
    puts "$value: [regexp {^[0-9]+$} $value]"
}

# EXPECTED OUTPUT
# 123: 1
# abc123: 0
# 123abc: 0

# ACTIVITY
# Allow an optional leading minus sign. Decide whether the empty string should match.
# Write your solution below.
