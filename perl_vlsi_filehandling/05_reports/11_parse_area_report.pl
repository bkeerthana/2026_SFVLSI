#!/usr/bin/perl
use strict;
use warnings;

# Topic: Parse Area Report CSV
#
# Activity:
# 1. Add more cells in inputs/area_report.csv.
# 2. Run the script.
# 3. Check whether instance, cell type, and area are printed correctly.
# 4. Modify the script to print only DFF cells.

open(my $fh, "<", "inputs/area_report.csv") or die "Cannot open area report: $!";

while (my $line = <$fh>) {
    chomp($line);
    next if $line eq "";

    my @fields = split(",", $line);

    my $instance = $fields[0];
    my $cell_type = $fields[1];
    my $area = $fields[2];

    print "$instance uses $cell_type with area $area\n";
}

close($fh);

