# Compare strings
# Run: tclsh 06_string_conditions.tcl
# Use eq and ne for string equality and inequality in expressions.

set design "counter"
if {$design eq "counter"} {
    puts "Counter design selected"
}
if {$design ne "top"} {
    puts "This is not the top design"
}

# EXPECTED OUTPUT
# Counter design selected
# This is not the top design

# ACTIVITY
# Set design to top. Add a condition for the name alu.
# Add your solution below.
