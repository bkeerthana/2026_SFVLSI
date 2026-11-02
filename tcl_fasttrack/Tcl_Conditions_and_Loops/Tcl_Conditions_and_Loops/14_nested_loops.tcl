# Nested loops
# Run: tclsh 14_nested_loops.tcl
# For every outer iteration, the inner loop runs completely.

foreach design {counter alu} {
    foreach corner {slow fast} {
        puts "Check $design at $corner corner"
    }
}

# EXPECTED OUTPUT
# Check counter at slow corner
# Check counter at fast corner
# Check alu at slow corner
# Check alu at fast corner

# ACTIVITY
# Add design mux and corner typical. Predict the number of printed lines.
# Add your solution below.
