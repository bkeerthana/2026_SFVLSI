#!/usr/bin/perl
use strict;
use warnings;

# Topic: Filter Array Using grep
#
# Activity:
# 1. Add sys_clk, reset_n, async_reset, and uart_clk.
# 2. Filter only clock signals.
# 3. Filter only reset signals.
# 4. Print both counts.

my @signals = ("clk", "reset", "core_clk", "data_in", "test_clk", "reset_n");

my @clock_signals = grep(/clk/, @signals);
my @reset_signals = grep(/reset/, @signals);

print "Clock signals:\n";
foreach my $sig (@clock_signals) {
    print "$sig\n";
}

print "\nReset signals:\n";
foreach my $sig (@reset_signals) {
    print "$sig\n";
}

