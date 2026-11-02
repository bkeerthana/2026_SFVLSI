# Wildcard question mark
# Run: tclsh 02_question_mark.tcl
# ? matches exactly one character.

foreach name {unit1.v unitA.v unit10.v} {
    puts "$name: [string match unit?.v $name]"
}

# EXPECTED OUTPUT
# unit1.v: 1
# unitA.v: 1
# unit10.v: 0

# ACTIVITY
# Create a pattern matching exactly two characters between unit and .v.
# Write your solution below.
