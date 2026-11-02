# Reverse for loop
# Run: tclsh 10_for_reverse.tcl
# A negative increment counts backwards.

for {set i 5} {$i >= 1} {incr i -1} {
    puts "Countdown: $i"
}

# EXPECTED OUTPUT
# Countdown: 5
# Countdown: 4
# Countdown: 3
# Countdown: 2
# Countdown: 1

# ACTIVITY
# Print 10, 8, 6, 4 and 2.
# Add your solution below.
