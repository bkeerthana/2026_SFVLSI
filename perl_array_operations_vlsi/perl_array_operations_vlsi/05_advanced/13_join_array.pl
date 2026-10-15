#!/usr/bin/perl
use strict;
use warnings;

# Topic: join Array Elements
#
# Activity:
# 1. Join signal names using comma.
# 2. Join signal names using space.
# 3. Create a Verilog-style port list.

my @signals = ("clk", "reset", "data_in", "data_out");

my $csv_line = join(",", @signals);
my $space_line = join(" ", @signals);

print "Comma separated: $csv_line\n";
print "Space separated: $space_line\n";

