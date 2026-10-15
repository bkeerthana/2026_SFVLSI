#!/usr/bin/perl
use strict;
use warnings;

# Topic: Access Array Using Index and for Loop
#
# Activity:
# 1. Add more signals to the array.
# 2. Print index number with each signal.
# 3. Modify the loop to print only even index values.

my @signals = ("clk", "reset", "data_in", "data_out", "enable");

for (my $i = 0; $i < scalar(@signals); $i++) {
    print "Index $i = $signals[$i]\n";
}

