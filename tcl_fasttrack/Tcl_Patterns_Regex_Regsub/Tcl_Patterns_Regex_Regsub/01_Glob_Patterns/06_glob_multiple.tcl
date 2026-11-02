# Multiple patterns and no matches
# Run: tclsh 06_glob_multiple.tcl
# Separate patterns can be passed to glob. -nocomplain returns an empty list if nothing matches.

# Each file-search example creates a fresh temporary directory.
# No existing files are overwritten. The directory is printed and left for inspection.
set handle [file tempfile unique_path]
close $handle
file delete $unique_path
set demo_dir $unique_path
file mkdir $demo_dir
foreach name {counter.v top.v unit1.v unit10.v chip.sv notes.txt} {
    set fh [open [file join $demo_dir $name] w]
    puts $fh "Practice file: $name"
    close $fh
}
puts "Sources: [lsort [glob -nocomplain -tails -directory $demo_dir *.v *.sv]]"
set reports [glob -nocomplain -tails -directory $demo_dir *.rpt]
puts "Report count: [llength $reports]"
puts "Practice directory: $demo_dir"

# EXPECTED OUTPUT
# Sources: chip.sv counter.v top.v unit1.v unit10.v
# Report count: 0
# Practice directory: <unique temporary path>

# ACTIVITY
# Create a .rpt file in the generated directory and list the report files.
# Write your solution below.
