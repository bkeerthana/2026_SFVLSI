# Wildcard star
# Run: tclsh 01_star.tcl
# string match uses glob-style patterns; * matches zero or more characters.

foreach name {counter.v top.v notes.txt} {
    puts "$name: [string match *.v $name]"
}

# EXPECTED OUTPUT
# counter.v: 1
# top.v: 1
# notes.txt: 0

# ACTIVITY
# Match only names beginning with counter.
# Write your solution below.
