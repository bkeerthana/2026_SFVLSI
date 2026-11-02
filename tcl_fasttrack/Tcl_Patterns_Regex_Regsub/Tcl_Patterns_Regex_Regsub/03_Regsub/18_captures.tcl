# Use captures in replacements
# Run: tclsh 18_captures.tcl
# \1 and \2 insert captured groups. Brace the replacement so Tcl preserves these backslashes.

set line "U1:AND2"
set updated [regsub {^([^:]+):([^:]+)$} $line {Instance=\1 Type=\2}]
puts $updated

# EXPECTED OUTPUT
# Instance=U1 Type=AND2

# ACTIVITY
# Reformat counter:PASS as Design=counter Status=PASS.
# Write your solution below.
