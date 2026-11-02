# foreach with pairs
# Run: tclsh 13_foreach_pairs.tcl
# Two loop variables take two consecutive elements per iteration.

set cells {U1 AND2 U2 OR2 U3 NAND2}
foreach {instance type} $cells {
    puts "$instance uses $type"
}

# EXPECTED OUTPUT
# U1 uses AND2
# U2 uses OR2
# U3 uses NAND2

# ACTIVITY
# Add U4 NOR2 and count the cell instances.
# Add your solution below.
