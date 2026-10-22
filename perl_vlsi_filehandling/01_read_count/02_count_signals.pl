#!/usr/bin/perl
use strict;
use warnings;

# Topic: Count Number of Signals
#
# Activity:
# 1. Add more signals in inputs/signals.txt.
# 2. Run this script.
# 3. Check whether the count changes correctly.
# 4. Remove some signals and run again.

open(my $fh, "<", "inputs/signals.txt") or die "Cannot open file: $!";

my $count = 0;

while (my $line = <$fh>) {
    chomp($line);
    next if $line eq "";
    $count++;
}

close($fh);

print "Total number of signals: $count\n";

