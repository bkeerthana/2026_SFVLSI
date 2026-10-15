#!/usr/bin/perl
use strict;
use warnings;

# Topic: push and pop
#
# Activity:
# 1. Add scan_enable and test_mode using push().
# 2. Remove the last element using pop().
# 3. Print the removed value.
# 4. Print the final signal list.

my @signals = ("clk", "reset", "data_in");

push(@signals, "data_out");
push(@signals, "enable");

print "After push:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

my $removed = pop(@signals);

print "\nRemoved signal: $removed\n";

print "\nAfter pop:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

