# Alternation and escaped dots
# Run: tclsh 12_alternation.tcl
# | means alternatives. \. matches a literal dot; braces preserve the backslash for the regex engine.

foreach name {top.v chip.sv notes.txt topXv} {
    puts "$name: [regexp {\.(v|sv)$} $name]"
}

# EXPECTED OUTPUT
# top.v: 1
# chip.sv: 1
# notes.txt: 0
# topXv: 0

# ACTIVITY
# Also accept .vhd files and ignore letter case with -nocase.
# Write your solution below.
