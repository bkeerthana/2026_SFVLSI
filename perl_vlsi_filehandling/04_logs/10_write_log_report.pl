#!/usr/bin/perl
use strict;
use warnings;

# Topic: Write Warning and Error Report
#
# Activity:
# 1. Read inputs/synthesis.log.
# 2. Store only Warning and Error lines in output/log_report.txt.
# 3. Open output/log_report.txt and verify.
# 4. Modify the script to include Info lines also.

open(my $in, "<", "inputs/synthesis.log") or die "Cannot open log file: $!";
open(my $out, ">", "output/log_report.txt") or die "Cannot create report file: $!";

while (my $line = <$in>) {
    if ($line =~ /Warning/ || $line =~ /Error/) {
        print $out $line;
    }
}

close($in);
close($out);

print "Log report generated successfully.\n";

