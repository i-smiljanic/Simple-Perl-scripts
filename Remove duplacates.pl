#Remove duplicate lines from a file
#Explanation:
#%seen tracks lines already printed
#$seen{$line}++ returns 0 first time → prints
#Next time → skips


use strict;
use warnings;

my %seen;

while (my $line = <>) {
    print $line unless $seen{$line}++;
}
