#!/usr/bin/perl
use strict;
use warnings;

# Topic: Calculate Total Area
#
# Activity:
# 1. Add more cells in inputs/area_report.csv.
# 2. Calculate total area manually.
# 3. Run this script.
# 4. Compare manual answer and script output.

open(my $fh, "<", "inputs/area_report.csv") or die "Cannot open area report: $!";

my $total_area = 0;

while (my $line = <$fh>) {
    chomp($line);
    next if $line eq "";

    my @fields = split(",", $line);
    my $area = $fields[2];

    $total_area = $total_area + $area;
}

close($fh);

print "Total area: $total_area\n";

