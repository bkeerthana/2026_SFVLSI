#!/usr/bin/perl
use strict;
use warnings;

# Topic: Count Warnings and Errors from Synthesis Log
#
# Activity:
# 1. Open inputs/synthesis.log.
# 2. Add more Warning and Error lines.
# 3. Run this script.
# 4. Modify it to count Info lines also.

open(my $fh, "<", "inputs/synthesis.log") or die "Cannot open log file: $!";

my $warning_count = 0;
my $error_count = 0;

while (my $line = <$fh>) {
    if ($line =~ /Warning/) {
        $warning_count++;
    }

    if ($line =~ /Error/) {
        $error_count++;
    }
}

close($fh);

print "Warnings: $warning_count\n";
print "Errors: $error_count\n";

