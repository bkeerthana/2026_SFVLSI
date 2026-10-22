#!/usr/bin/perl
use strict;
use warnings;

# Topic: Extract Clock and Reset Signals
#
# Activity:
# 1. Add reset signals such as reset_n and async_reset.
# 2. Add clock signals such as core_clk and test_clk.
# 3. Run this script.
# 4. Modify the code to count clock and reset signals separately.

open(my $fh, "<", "inputs/signals.txt") or die "Cannot open file: $!";

print "Clock and Reset Signals:\n";

while (my $line = <$fh>) {
    chomp($line);

    if ($line =~ /clk/ || $line =~ /reset/) {
        print "$line\n";
    }
}

close($fh);

