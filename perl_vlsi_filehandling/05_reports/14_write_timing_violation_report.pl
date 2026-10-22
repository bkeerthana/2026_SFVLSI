#!/usr/bin/perl
use strict;
use warnings;

# Topic: Generate Timing Violation Report
#
# Activity:
# 1. Read inputs/timing_report.txt.
# 2. Extract only negative slack paths.
# 3. Store them in output/timing_violation_report.txt.
# 4. Add violation count at the end of the file.

open(my $in, "<", "inputs/timing_report.txt") or die "Cannot open timing report: $!";
open(my $out, ">", "output/timing_violation_report.txt") or die "Cannot create report: $!";

my $violation_count = 0;

print $out "Timing Violation Report\n";
print $out "-----------------------\n";

while (my $line = <$in>) {
    chomp($line);
    next if $line eq "";

    my @fields = split(" ", $line);

    my $path = $fields[1];
    my $slack = $fields[3];

    if ($slack < 0) {
        print $out "Path $path has negative slack: $slack\n";
        $violation_count++;
    }
}

print $out "\nTotal violations: $violation_count\n";

close($in);
close($out);

print "Timing violation report generated successfully.\n";

