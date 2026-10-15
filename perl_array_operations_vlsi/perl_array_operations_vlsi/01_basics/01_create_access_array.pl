#!/usr/bin/perl
use strict;
use warnings;

# Topic: Create and Access Array
#
# Activity:
# 1. Add three more VLSI signals: enable, valid, ready.
# 2. Print the third signal.
# 3. Print the last signal using index -1.
# 4. Change clk to core_clk and run again.

my @signals = ("clk", "reset", "data_in", "data_out");

print "First signal: $signals[0]\n";
print "Second signal: $signals[1]\n";
print "Last signal: $signals[-1]\n";

