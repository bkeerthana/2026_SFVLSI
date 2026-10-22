#!/usr/bin/perl
use strict;
use warnings;

# Topic: Write Clock Signals to Output File
#
# Activity:
# 1. Read inputs/signals.txt.
# 2. Extract only clock signals.
# 3. Store them in output/clock_report.txt.
# 4. Open output/clock_report.txt and verify the result.

open(my $in, "<", "inputs/signals.txt") or die "Cannot open input file: $!";
open(my $out, ">", "output/clock_report.txt") or die "Cannot create output file: $!";

while (my $line = <$in>) {
    chomp($line);

    if ($line =~ /clk/) {
        print $out "$line\n";
    }
}

close($in);
close($out);

print "Clock report generated successfully.\n";

