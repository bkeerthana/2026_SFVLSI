#!/usr/bin/perl
use strict;
use warnings;

# Topic: Pass Filename from Command Line
#
# Run:
# perl 06_cli/15_read_file_arg.pl inputs/signals.txt
#
# Activity:
# 1. Run the script with inputs/signals.txt.
# 2. Run the script with inputs/synthesis.log.
# 3. Run without filename and observe the message.
# 4. Add validation for two filenames.

if (@ARGV < 1) {
    die "Usage: perl 06_cli/15_read_file_arg.pl filename\n";
}

my $filename = $ARGV[0];

open(my $fh, "<", $filename) or die "Cannot open file: $!";

while (my $line = <$fh>) {
    print $line;
}

close($fh);

