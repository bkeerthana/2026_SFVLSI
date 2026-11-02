# Logical operators
# Run: tclsh 05_logical_operators.tcl
# && means AND; || means OR; ! means NOT.

set area 450
set slack 0.2
set errors 0
if {$area <= 500 && $slack >= 0} {
    puts "Area and timing passed"
}
if {$area > 500 || $slack < 0} {
    puts "Review the design"
}
if {!$errors} {
    puts "No errors"
}

# EXPECTED OUTPUT
# Area and timing passed
# No errors

# ACTIVITY
# Change area to 600 and errors to 2. Explain each message.
# Add your solution below.
