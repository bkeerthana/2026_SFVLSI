#!/usr/bin/perl
use strict;
use warnings;

# Mini Project: VLSI Signal Classifier Using Arrays
#
# Activity:
# 1. Add at least 20 signal names to @signals.
# 2. Classify signals into clock, reset, data, and other arrays.
# 3. Print each category.
# 4. Write the categorized output into output/classified_signals.txt.
# 5. Add a new category for enable signals.

my @signals = (
    "clk", "core_clk", "test_clk",
    "reset", "reset_n", "async_reset",
    "data_in", "data_out", "write_data", "read_data",
    "enable", "valid", "ready"
);

my @clock_signals;
my @reset_signals;
my @data_signals;
my @other_signals;

foreach my $sig (@signals) {
    if ($sig =~ /clk/) {
        push(@clock_signals, $sig);
    }
    elsif ($sig =~ /reset/) {
        push(@reset_signals, $sig);
    }
    elsif ($sig =~ /data/) {
        push(@data_signals, $sig);
    }
    else {
        push(@other_signals, $sig);
    }
}

open(my $out, ">", "output/classified_signals.txt") or die "Cannot create output file: $!";

print $out "Clock Signals\n";
print $out "-------------\n";
foreach my $sig (@clock_signals) {
    print $out "$sig\n";
}

print $out "\nReset Signals\n";
print $out "-------------\n";
foreach my $sig (@reset_signals) {
    print $out "$sig\n";
}

print $out "\nData Signals\n";
print $out "------------\n";
foreach my $sig (@data_signals) {
    print $out "$sig\n";
}

print $out "\nOther Signals\n";
print $out "-------------\n";
foreach my $sig (@other_signals) {
    print $out "$sig\n";
}

close($out);

print "Signal classification report generated successfully.\n";

