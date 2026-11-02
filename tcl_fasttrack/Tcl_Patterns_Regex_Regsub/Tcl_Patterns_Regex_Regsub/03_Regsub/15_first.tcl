# Replace the first match
# Run: tclsh 15_first.tcl
# Without -all, regsub replaces only the first match and returns the updated string.

set line "ERROR: first ERROR: second"
set updated [regsub {ERROR} $line WARNING]
puts "Original: $line"
puts "Updated: $updated"

# EXPECTED OUTPUT
# Original: ERROR: first ERROR: second
# Updated: WARNING: first ERROR: second

# ACTIVITY
# Replace the first occurrence of counter with timer in a sentence.
# Write your solution below.
