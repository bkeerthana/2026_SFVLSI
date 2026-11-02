# Extract a signed decimal
# Run: tclsh 11_decimal.tcl
# An escaped dot matches a literal decimal point. This example accepts ordinary decimals, not scientific notation.

set line "Slack: -0.125 ns"
if {[regexp {Slack:[[:space:]]*(-?[0-9]+(?:\.[0-9]+)?)[[:space:]]+ns} $line full slack]} {
    puts "Slack: $slack"
    if {$slack < 0} {puts "Timing failed"}
}

# EXPECTED OUTPUT
# Slack: -0.125
# Timing failed

# ACTIVITY
# Try positive and integer slack values. Extend the pattern to allow a leading plus sign.
# Write your solution below.
