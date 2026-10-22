#!/usr/bin/perl
use strict;
use warnings;

# Topic: Append Summary to Existing Report
#
# Activity:
# 1. Run 05_write_clock_report.pl first.
# 2. Run this script.
# 3. Open output/clock_report.txt.
# 4. Observe that summary text is added at the end.

open(my $out, ">>", "output/clock_report.txt") or die "Cannot open output file: $!";

print $out "\nSummary: Clock extraction completed.\n";

close($out);

print "Summary appended successfully.\n";

