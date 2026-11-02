# Nested if
# Run: tclsh 04_nested_if.tcl
# A condition can contain another if statement.

set synthesis_done 1
set slack -0.1
if {$synthesis_done} {
    if {$slack >= 0} {
        puts "Design ready"
    } else {
        puts "Fix timing first"
    }
} else {
    puts "Run synthesis first"
}

# EXPECTED OUTPUT
# Fix timing first

# ACTIVITY
# Change both variables to exercise all three messages.
# Add your solution below.
