#!/usr/bin/perl
use strict;
use warnings;

# Topic: Extract Verilog Module Name
#
# Activity:
# 1. Run this script using inputs/design.v.
# 2. Change module name from alu to counter.
# 3. Run again and check whether module name changes.
# 4. Try with another Verilog file.

open(my $fh, "<", "inputs/design.v") or die "Cannot open Verilog file: $!";

while (my $line = <$fh>) {
    chomp($line);

    if ($line =~ /module\s+(\w+)/) {
        print "Module name: $1\n";
    }
}

close($fh);

