# Sort names
# Run: tclsh 11_lsort.tcl
# lsort returns a new list; dictionary sorting handles embedded digits naturally.

set modules {top counter alu register}
puts "Ascending: [lsort $modules]"
puts "Descending: [lsort -decreasing $modules]"
puts "Dictionary: [lsort -dictionary {unit10 unit2 unit1}]"

# EXPECTED OUTPUT
# Ascending: alu counter register top
# Descending: top register counter alu
# Dictionary: unit1 unit2 unit10

# ACTIVITY
# Sort cell12, cell3 and cell1 using ordinary and dictionary sorting.
# Write your solution below, then run this script again.
