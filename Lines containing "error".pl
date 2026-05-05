#Print all lines that contain "error"
#Explanation:
#<> reads input (file or STDIN) line by line
#/error/ is a regex match
#if filters lines
#This is basically a custom version of grep.

use strict;
use warnings;

while (my $line = <>) {
    print $line if $line =~ /error/;
}

