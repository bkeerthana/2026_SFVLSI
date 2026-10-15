#!/usr/bin/perl
use strict;
use warnings;

# Topic: map Array Transformation
#
# Activity:
# 1. Convert all signal names to uppercase.
# 2. Convert all signal names to lowercase.
# 3. Add prefix TOP_ to every signal using map.

my @signals = ("clk", "reset", "data_in", "data_out");

my @upper_signals = map { uc($_) } @signals;
my @prefixed_signals = map { "TOP_" . $_ } @signals;

print "Uppercase signals:\n";
foreach my $sig (@upper_signals) {
    print "$sig\n";
}

print "\nPrefixed signals:\n";
foreach my $sig (@prefixed_signals) {
    print "$sig\n";
}

