#!/usr/bin/perl
use strict;
use warnings;

# Topic: Extract Negative Slack Paths
#
# Activity:
# 1. Add more timing paths in inputs/timing_report.txt.
# 2. Include both positive and negative slack.
# 3. Run this script.
# 4. Modify the script to count total violations.

open(my $fh, "<", "inputs/timing_report.txt") or die "Cannot open timing report: $!";

print "Timing Violations:\n";

while (my $line = <$fh>) {
    chomp($line);
    next if $line eq "";

    my @fields = split(" ", $line);

    my $path = $fields[1];
    my $slack = $fields[3];

    if ($slack < 0) {
        print "Path $path has negative slack: $slack\n";
    }
}

close($fh);

