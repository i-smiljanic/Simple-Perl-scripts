#Parse CSV file
#Explanation:
#split separates columns
#Access with $fields[index]

use strict;
use warnings;

while (my $line = <>) {
    chomp $line;
    my @fields = split /,/, $line;
    print "Name: $fields[0], Age: $fields[1]\n";
}

