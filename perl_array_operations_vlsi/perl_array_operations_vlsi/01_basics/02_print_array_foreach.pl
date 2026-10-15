#!/usr/bin/perl
use strict;
use warnings;

# Topic: Print Array Using foreach
#
# Activity:
# 1. Add scan_in and scan_out to the array.
# 2. Print every signal with serial number.
# 3. Modify the code to print only signals starting with data.

my @signals = ("clk", "reset", "data_in", "data_out", "enable");

print "Signal List:\n";

foreach my $sig (@signals) {
    print "$sig\n";
}

