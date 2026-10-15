#!/usr/bin/perl
use strict;
use warnings;

# Topic: Search Element in Array
#
# Activity:
# 1. Change search signal to reset.
# 2. Search for a signal not present in the array.
# 3. Print Found or Not Found.
# 4. Try case-insensitive search.

my @signals = ("clk", "reset", "data_in", "data_out", "enable");
my $search = "clk";
my $found = 0;

foreach my $sig (@signals) {
    if ($sig eq $search) {
        $found = 1;
    }
}

if ($found == 1) {
    print "$search found\n";
} else {
    print "$search not found\n";
}

