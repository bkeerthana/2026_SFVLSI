# if and else
# Run: tclsh 02_if_else.tcl
# else handles the false condition.

set slack -0.2
if {$slack >= 0} {
    puts "Timing passed"
} else {
    puts "Timing failed"
}

# EXPECTED OUTPUT
# Timing failed

# ACTIVITY
# Set slack to 0 and predict the result before running.
# Add your solution below.
