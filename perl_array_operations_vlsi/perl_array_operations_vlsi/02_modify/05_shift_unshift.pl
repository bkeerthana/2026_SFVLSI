#!/usr/bin/perl
use strict;
use warnings;

# Topic: shift and unshift
#
# Activity:
# 1. Add power_good at the beginning using unshift().
# 2. Remove the first element using shift().
# 3. Print the removed value.
# 4. Explain the difference between push/pop and shift/unshift.

my @signals = ("reset", "data_in", "data_out");

unshift(@signals, "clk");

print "After unshift:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

my $removed = shift(@signals);

print "\nRemoved first signal: $removed\n";

print "\nAfter shift:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

