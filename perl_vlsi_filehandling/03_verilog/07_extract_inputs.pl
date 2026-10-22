#!/usr/bin/perl
use strict;
use warnings;

# Topic: Read Verilog File and Extract Input Ports
#
# Activity:
# 1. Open inputs/design.v.
# 2. Add more input and output ports.
# 3. Run this script.
# 4. Modify the script to extract output ports also.

open(my $fh, "<", "inputs/design.v") or die "Cannot open Verilog file: $!";

print "Input ports:\n";

while (my $line = <$fh>) {
    chomp($line);

    if ($line =~ /input/) {
        print "$line\n";
    }
}

close($fh);

