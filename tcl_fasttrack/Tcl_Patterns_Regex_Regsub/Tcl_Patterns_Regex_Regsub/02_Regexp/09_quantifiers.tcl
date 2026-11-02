# Quantifiers
# Run: tclsh 09_quantifiers.tcl
# * means zero or more, + means one or more, ? means optional, and {n} means exactly n repetitions.

puts "Zero digits: [regexp {^[0-9]*$} {}]"
puts "One or more digits: [regexp {^[0-9]+$} {}]"
puts "Optional minus: [regexp {^-?[0-9]+$} -12]"
puts "Exactly four digits: [regexp {^[0-9]{4}$} 2026]"

# EXPECTED OUTPUT
# Zero digits: 1
# One or more digits: 0
# Optional minus: 1
# Exactly four digits: 1

# ACTIVITY
# Accept a module name consisting of cell followed by 2 to 4 digits.
# Write your solution below.
