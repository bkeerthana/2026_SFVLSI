#!/usr/bin/perl
use strict;
use warnings;

# Topic: Array Slice
#
# Activity:
# 1. Extract first three signals.
# 2. Extract only data_in and data_out.
# 3. Modify the array and try different slice positions.

my @signals = ("clk", "reset", "data_in", "data_out", "enable", "valid");

my @first_three = @signals[0, 1, 2];
my @data_signals = @signals[2, 3];

print "First three signals:\n";
foreach my $sig (@first_three) {
    print "$sig\n";
}

print "\nData signals:\n";
foreach my $sig (@data_signals) {
    print "$sig\n";
}

