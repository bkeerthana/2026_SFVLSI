# switch with wildcard patterns
# Run: tclsh 08_switch_glob.tcl
# -glob enables wildcard patterns such as *.v.

set filename "counter.v"
switch -glob -- $filename {
    *.v   {puts "Verilog source"}
    *.sdc {puts "Constraint file"}
    *.rpt {puts "Report file"}
    default {puts "Other file type"}
}

# EXPECTED OUTPUT
# Verilog source

# ACTIVITY
# Add a pattern for SystemVerilog files ending in .sv.
# Add your solution below.
