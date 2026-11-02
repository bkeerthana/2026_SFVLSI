# Replace all matches
# Run: tclsh 16_all.tcl
# -all replaces every matching occurrence.

set text "clk_old reset_old data_old"
set updated [regsub -all {_old} $text {_new}]
puts $updated

# EXPECTED OUTPUT
# clk_new reset_new data_new

# ACTIVITY
# Replace all hyphens in clk-main reset-main with underscores.
# Write your solution below.
