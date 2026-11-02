# Count substitutions
# Run: tclsh 19_count.tcl
# With an output-variable argument, regsub returns the substitution count and stores the updated string.

set line "ERROR ERROR INFO ERROR"
set count [regsub -all {ERROR} $line WARNING updated]
puts "Replacements: $count"
puts "Updated: $updated"

# EXPECTED OUTPUT
# Replacements: 3
# Updated: WARNING WARNING INFO WARNING

# ACTIVITY
# Try text without ERROR. Check both the returned count and updated text.
# Write your solution below.
