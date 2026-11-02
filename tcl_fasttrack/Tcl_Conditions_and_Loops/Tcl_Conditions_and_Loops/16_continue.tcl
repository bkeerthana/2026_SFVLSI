# Skip an iteration with continue
# Run: tclsh 16_continue.tcl
# continue skips the rest of the current iteration and moves to the next one.

set files {counter.v notes.txt top.v}
foreach filename $files {
    if {![string match *.v $filename]} {
        continue
    }
    puts "Process: $filename"
}

# EXPECTED OUTPUT
# Process: counter.v
# Process: top.v

# ACTIVITY
# Add register.v and debug.log. Print a message for skipped filenames too.
# Add your solution below.
