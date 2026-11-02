# while loop
# Run: tclsh 11_while.tcl
# The condition is checked before every iteration. Update the variable so the loop terminates.

set attempt 1
while {$attempt <= 3} {
    puts "Checking attempt $attempt"
    incr attempt
}

# EXPECTED OUTPUT
# Checking attempt 1
# Checking attempt 2
# Checking attempt 3

# ACTIVITY
# Change the limit to 5. Explain why removing incr would prevent termination.
# Add your solution below.
