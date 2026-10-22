#!/usr/bin/perl
use strict;
use warnings;

# Topic: Extract Clock Signals
#
# Activity:
# 1. Add clock signals such as core_clk, test_clk, and uart_clk.
# 2. Run this script.
# 3. Verify whether all clock signals are printed.
# 4. Modify the pattern to detect signals containing clock also.

open(my $fh, "<", "inputs/signals.txt") or die "Cannot open file: $!";

print "Clock Signals:\n";

while (my $line = <$fh>) {
    chomp($line);

    if ($line =~ /clk/) {
        print "$line\n";
    }
}

close($fh);

