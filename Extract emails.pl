#Extract all email addresses
#Explanation:
#Regex captures email pattern
#/g finds multiple matches per line
#$1 is captured group

use strict;
use warnings;

while (my $line = <>) {
    while ($line =~ /([A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,})/g) {
        print "$1\n";
    }
}

