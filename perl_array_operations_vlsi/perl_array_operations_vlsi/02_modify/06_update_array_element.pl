#!/usr/bin/perl
use strict;
use warnings;

# Topic: Update Array Element
#
# Activity:
# 1. Change reset to reset_n.
# 2. Change data_in to input_data.
# 3. Print before and after update.

my @signals = ("clk", "reset", "data_in", "data_out");

print "Before update:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

$signals[1] = "reset_n";
$signals[2] = "input_data";

print "\nAfter update:\n";
foreach my $sig (@signals) {
    print "$sig\n";
}

