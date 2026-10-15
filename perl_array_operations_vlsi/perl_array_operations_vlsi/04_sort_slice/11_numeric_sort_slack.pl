#!/usr/bin/perl
use strict;
use warnings;

# Topic: Numeric Sort
#
# Activity:
# 1. Add more slack values.
# 2. Sort slack values in ascending order.
# 3. Sort slack values in descending order.
# 4. Print the worst slack value.

my @slack_values = (0.25, -0.10, 0.05, -0.30, 0.12, -0.45);

my @ascending = sort { $a <=> $b } @slack_values;
my @descending = sort { $b <=> $a } @slack_values;

print "Slack values in ascending order:\n";
foreach my $slack (@ascending) {
    print "$slack\n";
}

print "\nWorst slack: $ascending[0]\n";

print "\nSlack values in descending order:\n";
foreach my $slack (@descending) {
    print "$slack\n";
}

