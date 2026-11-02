# Character sets and ranges
# Run: tclsh 03_character_sets.tcl
# Use braces around patterns containing square brackets to prevent command substitution.

foreach name {unit1.v unit2.v unit8.v unitA.v} {
    puts "$name: [string match {unit[1-3].v} $name]"
}

# EXPECTED OUTPUT
# unit1.v: 1
# unit2.v: 1
# unit8.v: 0
# unitA.v: 0

# ACTIVITY
# Match unitA.v, unitB.v and unitC.v using a range.
# Write your solution below.
