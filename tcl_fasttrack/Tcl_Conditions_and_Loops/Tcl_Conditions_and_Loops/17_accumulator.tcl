# Calculate totals in a loop
# Run: tclsh 17_accumulator.tcl
# Use an accumulator to collect numeric results.

set areas {120 80 150}
set total 0
foreach area $areas {
    incr total $area
}
puts "Total area: $total"
puts "Average area: [expr {double($total) / [llength $areas]}]"

# EXPECTED OUTPUT
# Total area: 350
# Average area: 116.66666666666667

# ACTIVITY
# Find the largest area using a loop and if. Guard against an empty list before averaging.
# Add your solution below.
