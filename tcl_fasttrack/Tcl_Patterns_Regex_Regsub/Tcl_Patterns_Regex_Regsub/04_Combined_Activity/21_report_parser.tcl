# Parse and clean timing results
# Run: tclsh 21_report_parser.tcl
# Combine string matching, regexp, regsub and a loop. These are plain Tcl examples, not VLSI tool commands.

set lines {"counter.v : slack = 0.25" "alu.v : slack = -0.10" "notes.txt : ignored"}
foreach line $lines {
    if {![regexp {^([^[:space:]]+)[[:space:]]*:[[:space:]]*slack[[:space:]]*=[[:space:]]*(-?[0-9]+(?:\.[0-9]+)?)$} $line full name slack]} {
        continue
    }
    if {![string match *.v $name]} {continue}
    set design [regsub {\.v$} $name {}]
    if {$slack >= 0} {set status PASS} else {set status FAIL}
    puts "$design $slack $status"
}

# EXPECTED OUTPUT
# counter 0.25 PASS
# alu -0.10 FAIL

# ACTIVITY
# Accept .sv files too, add a new failing design, count passes/failures and report skipped lines.
# Write your solution below.
