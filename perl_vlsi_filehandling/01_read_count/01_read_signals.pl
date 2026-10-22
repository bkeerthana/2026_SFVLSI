#!/usr/bin/perl
use strict;
use warnings;

# Topic: Read Signal File
#
# Activity:
# 1. Open inputs/signals.txt.
# 2. Add at least 10 VLSI signal names.
# 3. Run this script.
# 4. Observe how Perl reads and prints each signal.

open(my $fh, "<", "inputs/signals.txt") or die "Cannot open file: $!";

while (my $line = <$fh>) {
    chomp($line);
    print "Signal: $line\n";
}

close($fh);

