#!/usr/bin/perl
use strict;
use warnings;

# Topic: Working with Two Arrays
#
# Activity:
# 1. Add more instances and cell types.
# 2. Print instance-cell mapping.
# 3. Add one more array for area and print instance, cell, and area.

my @instances = ("U1", "U2", "U3", "U4");
my @cells = ("AND2", "OR2", "DFF", "NAND2");

for (my $i = 0; $i < scalar(@instances); $i++) {
    print "$instances[$i] uses $cells[$i]\n";
}

