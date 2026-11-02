# Find files with glob
# Run: tclsh 05_glob_files.tcl
# glob searches the filesystem; string match checks a string. -tails returns names only.

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
set matches [lsort [glob -nocomplain -types f -tails -directory $demo_dir *.v]]
puts "Verilog files: $matches"
puts "Practice directory: $demo_dir"

# EXPECTED OUTPUT
# Verilog files: counter.v top.v unit1.v unit10.v
# Practice directory: <unique temporary path>

# ACTIVITY
# Find only unit?.v and explain why unit10.v is excluded.
# Write your solution below.
