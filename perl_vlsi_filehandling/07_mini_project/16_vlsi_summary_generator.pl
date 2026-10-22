#!/usr/bin/perl
use strict;
use warnings;

# Mini Project: VLSI Summary Generator
#
# Activity:
# 1. Read inputs/signals.txt, inputs/synthesis.log, and inputs/timing_report.txt.
# 2. Count total signals.
# 3. Count clock and reset signals.
# 4. Count warnings and errors.
# 5. Count negative slack paths.
# 6. Write all results into output/vlsi_summary.txt.

my $total_signals = 0;
my $clock_count = 0;
my $reset_count = 0;
my $warning_count = 0;
my $error_count = 0;
my $violation_count = 0;

open(my $sig_fh, "<", "inputs/signals.txt") or die "Cannot open signals.txt: $!";

while (my $line = <$sig_fh>) {
    chomp($line);
    next if $line eq "";

    $total_signals++;

    if ($line =~ /clk/) {
        $clock_count++;
    }

    if ($line =~ /reset/) {
        $reset_count++;
    }
}

close($sig_fh);

open(my $log_fh, "<", "inputs/synthesis.log") or die "Cannot open synthesis.log: $!";

while (my $line = <$log_fh>) {
    if ($line =~ /Warning/) {
        $warning_count++;
    }

    if ($line =~ /Error/) {
        $error_count++;
    }
}

close($log_fh);

open(my $time_fh, "<", "inputs/timing_report.txt") or die "Cannot open timing_report.txt: $!";

while (my $line = <$time_fh>) {
    chomp($line);
    next if $line eq "";

    my @fields = split(" ", $line);
    my $slack = $fields[3];

    if ($slack < 0) {
        $violation_count++;
    }
}

close($time_fh);

open(my $out, ">", "output/vlsi_summary.txt") or die "Cannot create summary file: $!";

print $out "VLSI Summary Report\n";
print $out "-------------------\n";
print $out "Total signals: $total_signals\n";
print $out "Clock signals: $clock_count\n";
print $out "Reset signals: $reset_count\n";
print $out "Warnings: $warning_count\n";
print $out "Errors: $error_count\n";
print $out "Timing violations: $violation_count\n";

close($out);

print "VLSI summary report generated successfully.\n";

