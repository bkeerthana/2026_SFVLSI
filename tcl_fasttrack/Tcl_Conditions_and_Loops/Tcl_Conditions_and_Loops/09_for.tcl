# for loop
# Run: tclsh 09_for.tcl
# for has initialization, condition, update and body. incr adds 1 by default.

for {set i 1} {$i <= 5} {incr i} {
    puts "Iteration: $i"
}

# EXPECTED OUTPUT
# Iteration: 1
# Iteration: 2
# Iteration: 3
# Iteration: 4
# Iteration: 5

# ACTIVITY
# Print numbers 2, 4, 6, 8 and 10 using incr i 2.
# Add your solution below.
