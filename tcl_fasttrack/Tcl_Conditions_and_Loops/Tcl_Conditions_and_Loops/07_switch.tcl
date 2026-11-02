# switch with exact matching
# Run: tclsh 07_switch.tcl
# switch compares a value against patterns; -exact requests literal matching.

set stage "synthesis"
switch -exact -- $stage {
    rtl       {puts "Read Verilog files"}
    synthesis {puts "Map the design to cells"}
    timing    {puts "Check timing reports"}
    default   {puts "Unknown stage"}
}

# EXPECTED OUTPUT
# Map the design to cells

# ACTIVITY
# Try timing and routing. Add a routing branch.
# Add your solution below.
