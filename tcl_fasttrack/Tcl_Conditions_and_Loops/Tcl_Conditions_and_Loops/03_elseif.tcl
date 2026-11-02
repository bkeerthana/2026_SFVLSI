# Multiple conditions
# Run: tclsh 03_elseif.tcl
# Conditions are checked from top to bottom; only the first matching branch runs.

set utilization 75
if {$utilization < 50} {
    puts "Low utilization"
} elseif {$utilization <= 80} {
    puts "Moderate utilization"
} else {
    puts "High utilization"
}

# EXPECTED OUTPUT
# Moderate utilization

# ACTIVITY
# Try 40, 80 and 95. Add a separate message for utilization above 100.
# Add your solution below.
