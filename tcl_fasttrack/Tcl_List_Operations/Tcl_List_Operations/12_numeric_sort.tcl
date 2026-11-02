# Sort numbers
# Run: tclsh 12_numeric_sort.tcl
# Use -integer for integers and -real for decimal values.

set areas {100 20 3 45}
puts "Text order: [lsort $areas]"
puts "Numeric order: [lsort -integer $areas]"
puts "Delays: [lsort -real {1.25 0.8 10.5 2.1}]"

# EXPECTED OUTPUT
# Text order: 100 20 3 45
# Numeric order: 3 20 45 100
# Delays: 0.8 1.25 2.1 10.5

# ACTIVITY
# Sort five integer cell counts in descending numeric order.
# Write your solution below, then run this script again.
