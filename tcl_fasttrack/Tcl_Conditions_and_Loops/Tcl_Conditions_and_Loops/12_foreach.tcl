# foreach over a list
# Run: tclsh 12_foreach.tcl
# foreach assigns one list element to the loop variable each time.

set sources {counter.v register.v top.v}
foreach source $sources {
    puts "Source: $source"
}

# EXPECTED OUTPUT
# Source: counter.v
# Source: register.v
# Source: top.v

# ACTIVITY
# Append alu.v and print each filename with a number.
# Add your solution below.
