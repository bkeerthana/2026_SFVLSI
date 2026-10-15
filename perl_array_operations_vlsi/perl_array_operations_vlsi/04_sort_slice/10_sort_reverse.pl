#!/usr/bin/perl
use strict;
use warnings;

# Topic: sort and reverse
#
# Activity:
# 1. Add more module names.
# 2. Sort module names alphabetically.
# 3. Print reverse order.
# 4. Try sorting signal names.

my @modules = ("uart", "alu", "counter", "fifo", "decoder");

my @sorted_modules = sort(@modules);
my @reverse_modules = reverse(@sorted_modules);

print "Sorted modules:\n";
foreach my $mod (@sorted_modules) {
    print "$mod\n";
}

print "\nReverse sorted modules:\n";
foreach my $mod (@reverse_modules) {
    print "$mod\n";
}

