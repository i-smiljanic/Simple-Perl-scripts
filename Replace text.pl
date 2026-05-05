#Replace text in a file
#Explanation:
#s///g replaces all matches
#Works line-by-line

#Replace "error" with "warning".

use strict;
use warnings;

while (my $line = <>) {
    $line =~ s/error/warning/g;
    print $line;
}

