# Basic if
# Run: tclsh 01_if.tcl
# The body runs only when the condition is true.

set slack 0.5
if {$slack >= 0} {
    puts "Timing requirement met"
}

# EXPECTED OUTPUT
# Timing requirement met

# ACTIVITY
# Change slack to -0.2. Observe why nothing is printed.
# Add your solution below.
