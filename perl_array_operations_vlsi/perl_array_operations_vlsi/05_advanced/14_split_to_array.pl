#!/usr/bin/perl
use strict;
use warnings;

# Topic: split String into Array
#
# Activity:
# 1. Change the CSV line to include more signals.
# 2. Split the line into an array.
# 3. Print each signal separately.
# 4. Count total number of signals.

my $line = "clk,reset,data_in,data_out,enable";

my @signals = split(",", $line);

foreach my $sig (@signals) {
    print "$sig\n";
}

print "Total signals: " . scalar(@signals) . "\n";

