#!/usr/bin/perl
use strict;
use warnings;

# Topic: Count Array Elements
#
# Activity:
# 1. Add five more signal names.
# 2. Count the total number of signals.
# 3. Remove one signal using pop() and count again.

my @signals = ("clk", "reset", "data_in", "data_out", "enable");

my $count = scalar(@signals);

print "Total signals: $count\n";

